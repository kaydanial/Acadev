<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Speaker */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="speaker-form">

    <?php $form = ActiveForm::begin([
        'id' => 'speaker-form',
        'options' => ['class' => 'form-horizontal', 'enctype' => 'multipart/form-data'],
        'fieldConfig' => [
            'template' => "{label}\n<div class=\"col-lg-9\">{input}</div>\n<div class=\"col-sm-offset-3 col-lg-9\">{error}\n{hint}</div>",
            'labelOptions' => ['class' => 'col-lg-3 control-label'],
        ],
    ]); ?>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            </div><!-- box-header -->
            <div class="box-body">

                <?php
                $initialPreview = [];
                if ($model->image_path) {
                    $pathImg = Yii::$app->request->baseUrl . $model->image_path;
                    $initialPreview[] = Html::img($pathImg, ['class' => 'file-preview-image', 'width' => '120px']);
                }

                ?>

                <?= $form->field($model, "img")->label(Yii::t('app', 'Choose Profile Picture'))->widget(\kartik\file\FileInput::classname(), [

                    'options' => [
                        'multiple' => false,
                        'accept' => 'image/*',
                        'class' => 'optionvalue-img'
                    ],
                    'pluginOptions' => [
                        'previewFileType' => 'image',
                        'showCaption' => false,
                        'showUpload' => false,
                        'browseClass' => 'btn btn-primary btn-sm',
                        'browseLabel' => ' Choose File',
//                                'browseIcon' => '<i class="glyphicon glyphicon-picture"></i>',
                        'removeClass' => 'btn btn-danger btn-sm',
                        'removeLabel' => ' Delete',
                        'removeIcon' => '<i class="fa fa-trash"></i>',
                        'previewSettings' => [
                            'image' => ['width' => '138px', 'height' => 'auto']
                        ],
                        'initialPreview' => $initialPreview,
                        'layoutTemplates' => ['footer' => '']
                    ]

                ]) ?>

                <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

                <?= $form->field($model, 'phone_no')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'facebook')->textInput(['maxlength' => true, 'placeholder' => 'https://www.facebook.com/username']) ?>

                <?= $form->field($model, 'linkedin')->textInput(['maxlength' => true]) ?>

                <?= $form->field($model, 'twitter')->textInput(['maxlength' => true]) ?>

            </div>
            <div class="box-footer">
                <div class="pull-right">
                    <a href="#" onclick="window.history.go(-1)" class="btn btn-danger">Back</a>
                    <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
                </div>
            </div>
        </div>
    <?php ActiveForm::end(); ?>

</div>
