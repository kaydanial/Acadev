<?php

namespace app\controllers;

use app\models\Category;
use app\models\EventType;
use app\models\Speaker;
use app\models\SubCategory;
use Yii;
use app\models\Event;
use app\models\EventSearch;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Setup;

/**
 * EventController implements the CRUD actions for Event model.
 */
class EventController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Event models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new EventSearch();
        $searchModel->user_id = Yii::$app->user->id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Event model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Event model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Event();

        if ($model->load(Yii::$app->request->post())) {

            $model->user_id = Yii::$app->user->id;

            // convert date format before insert into db
            if ($model->register_date) {
                $model->register_date = date('Y-m-d', strtotime($_POST['Event']['register_date']));
            }

            if ($model->register_end_date) {
                $model->register_end_date = date('Y-m-d', strtotime($_POST['Event']['register_end_date']));
            }

            if ($model->start_date) {
                $model->start_date = date('Y-m-d', strtotime($_POST['Event']['start_date']));
            }

            if ($model->end_date) {
                $model->end_date = date('Y-m-d', strtotime($_POST['Event']['end_date']));
            }

            if ($model->save()) {
                Yii::$app->session->setFlash('success', 'Event Created');
                return $this->redirect(['index']);
            }
        } // end if ($model->load(Yii::$app->request->post()))

        // get category list
        $categoryList = ArrayHelper::map(Category::findAll(['status' => 1]), 'id', 'category_name');
        $eventTypeList = ArrayHelper::map(EventType::find()->all(), 'id', 'event_type_name');
        $speakerList = ArrayHelper::map(Speaker::find()->where(['user_id' => Yii::$app->user->id])->all(), 'id', 'name');

        return $this->render('create', [
            'model' => $model,
            'categoryList' => $categoryList,
            'eventTypeList' => $eventTypeList,
            'speakerList' => $speakerList,
        ]);

    }

    /**
     * Updates an existing Event model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            // convert date format before insert into db
            if ($model->register_date) {
                $model->register_date = date('Y-m-d', strtotime($_POST['Event']['register_date']));
            }

            if ($model->register_end_date) {
                $model->register_end_date = date('Y-m-d', strtotime($_POST['Event']['register_end_date']));
            }

            if ($model->start_date) {
                $model->start_date = date('Y-m-d', strtotime($_POST['Event']['start_date']));
            }

            if ($model->end_date) {
                $model->end_date = date('Y-m-d', strtotime($_POST['Event']['end_date']));
            }

            if ($model->save()) {
                Yii::$app->session->setFlash('success', 'Event Updated');
                return $this->redirect(['index']);
            }
        }

        // get category list
        $categoryList = ArrayHelper::map(Category::findAll(['status' => 1]), 'id', 'category_name');
        $eventTypeList = ArrayHelper::map(EventType::find()->all(), 'id', 'event_type_name');
        $speakerList = ArrayHelper::map(Speaker::find()->where(['user_id' => Yii::$app->user->id])->all(), 'id', 'name');

        return $this->render('update', [
            'model' => $model,
            'categoryList' => $categoryList,
            'eventTypeList' => $eventTypeList,
            'speakerList' => $speakerList,
        ]);

    }

    /**
     * Deletes an existing Event model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Event model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Event the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Event::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionSubCategory() {
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $cat_id = $parents[0];

                $sub_categories = SubCategory::find()->where([
                    'status' => 1,
                    'category_id' => $cat_id,
                ])->all();

                foreach ($sub_categories as $key => $value)
                {
                    $out[$key]['id'] = $value->id;
                    $out[$key]['name'] = $value->sub_category_name;
                }

                echo Json::encode(['output'=>$out, 'selected'=>'']);
                return;
            }
        }
        echo Json::encode(['output'=>'', 'selected'=>'']);
    }
}
