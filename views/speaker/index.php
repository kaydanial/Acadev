<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SpeakerSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Speakers');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="speaker-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php echo Html::encode($this->title) ?></h3>
            <div class="box-tools">
                <?= Html::a(Yii::t('app', 'Create New Speaker'), ['create'], ['class' => 'btn btn-success btn-sm']) ?>
            </div>
        </div><!-- box-header -->
        <div class="table-responsive">
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    'name',
                    'email',
                    'phone_no',
                    // 'facebook',
                    // 'linkedin',
                    // 'twitter',
                    // 'image_path',

                    ['class' => 'yii\grid\ActionColumn'],
                ],
            ]); ?>
        </div>
    </div>
</div>
