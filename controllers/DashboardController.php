<?php

namespace app\controllers;

use Yii;
use app\models\Event;
use app\models\EventJoin;
use app\models\Speaker;

class DashboardController extends \yii\web\Controller
{
    public function actionIndex()
    {
        // get total incoming event
        $query_event = Event::find()->where(['>', 'start_date', date('Y-m-d')]);

        $data['total_event'] = $query_event->count();
        $data['events'] = $query_event->limit(10)->orderBy(['start_date'=>SORT_ASC])->all();

        $data['total_speaker'] = Speaker::find()->count();

        $data['total_joined_event'] = EventJoin::find()->where(['user_id' => Yii::$app->user->id])->count();


        return $this->render('index', $data);
    }

}
