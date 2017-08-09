<?php

namespace app\controllers;

use app\models\Event;
use app\models\Speaker;
use Yii;
use app\models\EventJoin;
use yii\data\Pagination;
use yii\web\Controller;

class MyEventController extends Controller
{
    public function actionIndex()
    {
        $query = EventJoin::find()->where(['user_id' => Yii::$app->user->id, 'is_cancel' => 0]);

        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count()]);
        $pages->setPageSize(10);

        $model = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return $this->render('index', [
            'countQuery' => $countQuery,
            'model' => $model,
            'pages' => $pages,
        ]);
    }

    public function actionCancelEvent($id) {

        $model = EventJoin::findOne($id);

        if ($model->user_id == Yii::$app->user->id) {

            $model->is_cancel = 1;
            $model->save();

            Yii::$app->session->setFlash('success', 'You have successfully cancel this event');
            return $this->redirect(['index']);

        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionViewEvent($id) {
        $model = Event::findOne($id);

        return $this->render('view-event', ['model' => $model]);
    }

    public function actionViewSpeaker($id) {
        $model = Speaker::findOne($id);
        return $this->render('view-speaker', ['model' => $model]);

    }

}
