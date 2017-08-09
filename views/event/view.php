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
        <a href="<?php echo Yii::$app->request->referrer?>" class="btn btn-warning btn-sm">Back</a>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary btn-sm']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger btn-sm',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
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
                            return Html::a((isset($model->speaker->name)) ? $model->speaker->name:'-', ['speaker/view', 'id' => $model->speaker_id]);
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
                    'fees:ntext',
                    'link',
                    'venue',
                    'tags',
                    [
                        'attribute'=>'start_date',
                        'value'=>($model->start_date) ? date('d-m-Y', strtotime($model->start_date)): '-',
                    ],
                    [
                        'attribute'=>'end_date',
                        'value'=>($model->end_date) ? date('d-m-Y', strtotime($model->end_date)): '-',
                    ],
                    'status',
                    [
                        'attribute'=>'updated_at',
                        'value'=>date('d-m-Y H:iA', strtotime($model->updated_at)),
                    ],
                ],
            ]) ?>
        </div><!-- box-body -->
    </div><!-- box -->



</div>
