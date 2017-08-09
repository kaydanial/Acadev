<?php

namespace app\controllers;

use app\models\SearchForm;
use app\models\Event;
use Yii;
use yii\data\Pagination;
use app\models\EventSearch;
use yii\helpers\ArrayHelper;
use app\models\Category;
use app\models\EventType;

class PastEventController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $model = new SearchForm();
        $errors = [];
        $queryCount = null;
        $pages = [];
        $results = [];

        $query = Event::find()->where(['<=', 'start_date', date('Y-m-d')]);

        $queryCount = clone $query;

        $pages = new Pagination(['totalCount'=>$queryCount->count()]);

        $pages->setPageSize(10);

        $results = $query
            ->offset($pages->offset)
            ->limit($pages->limit)
            ->orderBy(['rating_mark' => SORT_DESC, 'num_view' => SORT_DESC])
            ->all();

        if ($model->load(Yii::$app->request->get()) && $model->validate())
        {
            /**
             * Incoming event
             */
            // do search data here
            $query = Event::find()
                ->where(['like', 'tags', $model->search])
                ->orWhere(['like','title', $model->search])
                ->andWhere(['<=', 'start_date', date('Y-m-d')]);

            $queryCount = clone $query;
            $pages = new Pagination(['totalCount' => $queryCount->count()]);

            $pages->setPageSize(10);

            $results = $query
                ->offset($pages->offset)
                ->limit($pages->limit)
                ->orderBy(['rating_mark' => SORT_DESC, 'num_view' => SORT_DESC])
                ->all();
        }
        else
        {
            $errors = $model->errors;
        }

        return $this->render('index', [
            'queryCount' => $queryCount,
            'model' => $model,
            'errors' => $errors,
            'pages' => $pages,
            'results' => $results,
        ]);
    }

    /**
     * Advanced search page
     */
    public function actionAdvancedSearch() {
        $model = new EventSearch();
        $results = [];
        $queryCount = [];

        $pages = [];
        // get category list
        $categoryList = ArrayHelper::map(Category::findAll(['status' => 1]), 'id', 'category_name');
        $eventTypeList = ArrayHelper::map(EventType::find()->all(), 'id', 'event_type_name');

        if ($model->load(Yii::$app->request->get()) && $model->validate())
        {
            $query = Event::find();

            if ($model->category_id) {
                $query->andFilterWhere(['category_id' => $model->category_id]);
            }

            if ($model->sub_category_id) {
                $query->andFilterWhere(['sub_category_id' => $model->sub_category_id]);
            }

            if ($model->search) {
                $query->where(['like', 'tags', $model->search]);
                $query->orWhere(['like', 'title', $model->search]);
            }

            if ($_GET['from'] != '') {
                $model->start_date = date('Y-m-d', strtotime($_GET['from']));
                $query->andWhere(['>=', 'start_date', $model->start_date]);
            }

            if ($_GET['to'] != '') {
                $model->start_date = date('Y-m-d', strtotime($_GET['to']));
                $query->andWhere(['<=', 'start_date', $model->start_date]);
            }

            $queryCount = clone $query;
            $pages = new Pagination(['totalCount' => $queryCount->count()]);
            $pages->setPageSize(10);

            $results = $query->offset($pages->offset)
                ->limit($pages->limit)
                ->orderBy(['rating_mark' => SORT_DESC, 'num_view' => SORT_DESC])
                ->all();
        }

        return $this->render('advanced_search', [
            'model' => $model,
            'results' => $results,
            'categoryList' => $categoryList,
            'eventTypeList' => $eventTypeList,
            'pages' => $pages,
            'queryCount' => $queryCount,
        ]);
    } // end function

}
