<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Event */

$this->title = 'View Event';
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Events'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="event-view">

    <p>
        <a href="<?php echo Yii::$app->request->referrer?>" class="btn btn-warning">Back</a>
    </p>
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php echo $model->title ?></h3>
            <div class="box-tools">

            </div>
        </div><!-- box-header -->
        <div class="box-body table-responsive no-padding">
            <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                    [
                        'attribute' => 'speaker_id',
                        'value' => function ($model) {
                            return Html::a((isset($model->speaker->name)) ? $model->speaker->name:'-', ['view-speaker', 'id' => $model->speaker_id]);
                        },
                        'format' => 'raw',
                    ],
                    [
                        'attribute' => 'category_id',
                        'value' => function ($model) {
                            return ($model->category->category_name) ? $model->category->category_name:'-';
                        }
                    ],
                    [
                        'attribute' => 'sub_category_id',
                        'value' => function ($model) {
                            return ($model->subCategory->sub_category_name) ? $model->subCategory->sub_category_name:'-';
                        }
                    ],
                    [
                        'attribute' => 'event_type_id',
                        'value' => function ($model) {
                            return ($model->eventType->event_type_name) ? $model->eventType->event_type_name:'-';
                        }
                    ],
                    'title',
                    'description:ntext',
                    [
                        'attribute'=>'register_date',
                        'value'=>($model->register_date) ? date('d-m-Y', strtotime($model->register_date)) : '-',
                    ],
                    [
                        'attribute'=>'register_end_date',
                        'value'=>($model->register_end_date) ? date('d-m-Y', strtotime($model->register_end_date)): '-',
                    ],
                    'past_event',
                    'city',
                    'state',
                    'organization',
                    'institution',
                    'link',
                    'venue',
                ],
            ]) ?>
        </div><!-- box-body -->
    </div><!-- box -->



</div>
