<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Event */
/* @var $form yii\widgets\ActiveForm */

if ($model->register_date) {
    $model->register_date = date('d-m-Y', strtotime($model->register_date));
}
if ($model->register_end_date) {
    $model->register_end_date = date('d-m-Y', strtotime($model->register_end_date));
}
if ($model->start_date) {
    $model->start_date = date('d-m-Y', strtotime($model->start_date));
}
if ($model->end_date) {
    $model->end_date = date('d-m-Y', strtotime($model->end_date));
}
?>
<div class="event-form">

    <?php $form = ActiveForm::begin([
        'fieldConfig' => [
            'template' => "{label}\n<div class=\"col-lg-10\">{input}</div>\n<div class=\"col-sm-offset-3 col-lg-9\">{error}\n{hint}</div>",
            'labelOptions' => ['class' => 'col-lg-2 control-label'],
        ],
    ]); ?>


    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><?php echo Html::encode($this->title) ?></h3>
        </div><!-- box-header -->
        <div class="box-body">
            <?= $form->field($model, 'speaker_id')->dropDownList($speakerList, ['id' => 'speaker-id', 'prompt' => '- select -']) ?>
            <?= $form->field($model, 'category_id')->dropDownList($categoryList, ['id' => 'category-id', 'prompt' => '- select -']) ?>

            <?php
            $subCategories = array();
            if (!$model->isNewRecord)
            {
                if ($model->category_id)
                {
                    $subCategories = \yii\helpers\ArrayHelper::map(\app\models\SubCategory::find()->where(['category_id' => $model->category_id])->all(), 'id', 'sub_category_name');
                }
            }
            ?>

            <?=
            $form->field($model, 'sub_category_id')->widget(\kartik\depdrop\DepDrop::className(), [
                'data' => (count($subCategories) > 0) ? $subCategories: [],
                'options' => ['id' => 'sub-category-id', 'prompt' => '- Select -'],
                'pluginOptions' => [
                    'depends' => ['category-id'],
                    'placeholder' => 'Select...',
                    'url' => \yii\helpers\Url::to('sub-category')
                ],
            ]);
            ?>


            <?= $form->field($model, 'event_type_id')->dropDownList($eventTypeList, ['id' => 'event-type-id', 'prompt' => '- select -']) ?>

            <?= $form->field($model, 'start_date')->widget(DatePicker::className(), [
                'options' => ['placeholder' => 'Enter start date'],
                'pluginOptions' => [
                    'autoclose' => true,
                    'format' => 'dd-mm-yyyy'
                ],
            ]) ?>

            <?= $form->field($model, 'end_date')->widget(DatePicker::className(), [
                'options' => ['placeholder' => 'Enter end date'],
                'pluginOptions' => [
                    'autoclose' => true,
                    'format' => 'dd-mm-yyyy'
                ],
            ]) ?>

            <?= $form->field($model, 'title')->textInput(['maxlength' => true, 'placeholder' => 'Enter event title']) ?>

            <?= $form->field($model, 'venue')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'register_date')->widget(DatePicker::className(), [
                'options' => ['placeholder' => 'Enter register date'],
                'pluginOptions' => [
                    'autoclose' => true,
                    'format' => 'dd-mm-yyyy'
                ],
            ]) ?>

            <?= $form->field($model, 'register_end_date')->widget(DatePicker::className(), [
                'options' => ['placeholder' => 'Leave empty for specific register date'],
                'pluginOptions' => [
                    'autoclose' => true,
                    'format' => 'dd-mm-yyyy'
                ],
            ]) ?>

            <?= $form->field($model, 'past_event')->textInput(['maxlength' => true, 'placeholder' => 'Enter past event']) ?>

            <?= $form->field($model, 'city')->textInput(['maxlength' => true, 'placeholder' => 'Enter city']) ?>

            <?= $form->field($model, 'state')->textInput(['maxlength' => true, 'placeholder' => 'Enter state']) ?>

            <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

            <?= $form->field($model, 'organization')->textInput(['maxlength' => true, 'placeholder' => 'Enter organization']) ?>

            <?= $form->field($model, 'institution')->textInput(['maxlength' => true, 'placeholder' => 'Enter institution']) ?>

            <?= $form->field($model, 'fees')->textarea(['rows' => 6]) ?>

            <?= $form->field($model, 'link')->textInput(['maxlength' => true, 'placeholder' => 'Example http://umconference.um.edu.my']) ?>

            <?= $form->field($model, 'tags')->textInput(['maxlength' => true]) ?>
        </div><!-- box-body -->
        <div class="box-footer">
            <div class="pull-right">
                <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div><!-- box-footer -->
    </div><!-- box -->

    <?php ActiveForm::end(); ?>

</div>
