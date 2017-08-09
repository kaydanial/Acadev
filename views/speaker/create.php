<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Speaker */

$this->title = Yii::t('app', 'Create New Speaker');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Speakers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="speaker-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>
