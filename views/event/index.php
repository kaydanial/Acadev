<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use app\models\Category;
use app\models\SubCategory;
use app\models\EventType;
use app\models\Speaker;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EventSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Events');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="event-index">


    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php echo Html::encode($this->title) ?></h3>
            <div class="box-tools">
                <?= Html::a(Yii::t('app', 'Create Event'), ['create'], ['class' => 'btn btn-success btn-sm']) ?>
            </div>
        </div><!-- box-header -->
        <div class="box-body">
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'tableOptions' => ['class' => 'table table-striped table-bordered table-condensed'],
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    [
                        'attribute' => 'speaker_id',
                        'value' => function ($model, $index, $column) {
                            return (isset($model->speaker->name)) ? $model->speaker->name: "-";
                        },
                        'filter' => ArrayHelper::map(Speaker::find()->where(['user_id' => Yii::$app->user->id])->all(), 'id', 'name'),
                    ],

                    [
                        'attribute' => 'category_id',
                        'value' => function ($model, $index, $column) {
                            return (isset($model->category->category_name)) ? $model->category->category_name: '-';
                        },
                        'filter' => ArrayHelper::map(Category::find()->all(), 'id', 'category_name'),
                    ],
                    [
                        'attribute' => 'sub_category_id',
                        'value' => function ($model, $index, $column) {
                            return (isset($model->subCategory->sub_category_name)) ? $model->subCategory->sub_category_name: "-";
                        },
                        'filter' => ArrayHelper::map(SubCategory::find()->all(), 'id', 'sub_category_name'),
                    ],
                    [
                        'attribute' => 'event_type_id',
                        'value' => function ($model) {
                            return (isset($model->eventType->event_type_name)) ? $model->eventType->event_type_name: '-';
                        },
                        'filter' => ArrayHelper::map(EventType::find()->all(), 'id', 'event_type_name'),
                    ],
                    'title',
//                    'tags',


                    [
                        'class' => 'yii\grid\ActionColumn',
                        'headerOptions' => ['style' => 'width:80px'],
                    ],
                ],
            ]); ?>
        </div><!-- box-body -->
    </div><!-- box -->
</div>
