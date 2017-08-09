<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Preferences */

$this->title = Yii::t('app', 'Create Preferences');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Preferences'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="preferences-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
