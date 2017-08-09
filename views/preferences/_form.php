<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Speaker;

/* @var $this yii\web\View */
/* @var $model app\models\preferences */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="preferences-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'location')->textInput(['maxlength' => true]) ?>

    <?= $form
        ->field($model, 'speaker_id')
        ->dropDownList(
            ArrayHelper::map(
                Speaker::find()->all(),
                'id',
                'name'
            )
        );
    ?>

    <?= $form
        ->field($model, 'weekday')
        ->dropDownList(
            Array('1'=>'Weekday','0'=>'Weekend','-1'=>'Any')
        );
    ?>

    <?= $form
        ->field($model, 'paid')
        ->dropDownList(
            Array('0'=>'Free','1'=>'Paid','-1'=>'Any')
        );
    ?>

    <?= $form
        ->field($model, 'time')
        ->dropDownList(
            Array('0'=>'Morning','1'=>'Afternoon','2'=>'Evening','-1'=>'Any')
        );
    ?>

    <?= $form
        ->field($model, 'aday')
        ->dropDownList(
            Array('0'=>'1 Day','1'=>'>1 Day','-1'=>'Any')
        );
    ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>