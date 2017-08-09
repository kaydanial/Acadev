<?php

/* @var $this yii\web\View */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use app\models\SubCategory;
use kartik\depdrop\DepDrop;
use yii\helpers\ArrayHelper;

$this->title = Yii::t('app', 'Search Event');

$this->params['breadcrumbs'][] = $this->title;
?>

<div class="container">
    <div class="row">
        <div class="container" style="margin-top: 1%;">
            <div class="col-md-6 col-md-offset-3">

                <!-- Search Form -->
                <?php $form = ActiveForm::begin(); ?>

                <!-- Search Field -->
                <div class="row">
                    <h1 class="text-center">Search Academic Event</h1>

                    <?php if ($errors) { ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php foreach ($errors['search'] as $key => $value) { ?>
                                    <li><?php echo $value; ?></li>
                                <?php } ?>
                            </ul>
                        </div>
                    <?php } ?>

                    <div class="form-group">
                        <div class="input-group">
                            <?= Html::activeTextInput($model, 'search', ['placeholder' => 'Search', 'class' => 'form-control']); ?>
                            <span class="input-group-btn">
                                <button class="btn btn-success" type="submit" name="btn_search"><span
                                            class="glyphicon glyphicon-search" aria-hidden="true"><span
                                                style="margin-left:10px;">Search</span></button>
                            </span>
                        </div>
                        <ul class="nav nav-pills">
                            <li role="presentation" class="disabled"><a href="#">Basic Search</a></li>
                            <li role="presentation"><a href="#">Advanced Search <i class="fa fa-arrow-circle-right"></i>
                                </a></li>
                        </ul>
                    </div>
                </div>

                <?php ActiveForm::end(); ?>
                <!-- End of Search Form -->

            </div>
        </div>
    </div>
</div>