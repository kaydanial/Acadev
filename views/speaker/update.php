<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Speaker */

$this->title = Yii::t('app', 'Update {modelClass}: ', [
    'modelClass' => 'Speaker',
]) . $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Speakers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="speaker-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
