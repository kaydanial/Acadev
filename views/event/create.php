<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Event */

$this->title = Yii::t('app', 'Create Event');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Events'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="event-create">

    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
        </div><!-- box-header -->
        <div class="box-body">
            <?= $this->render('_form', [
                'model' => $model,
                'categoryList' => $categoryList,
                'eventTypeList' => $eventTypeList,
                'speakerList' => $speakerList,
            ]) ?>
        </div><!-- box-body -->
    </div><!-- box -->

</div>
