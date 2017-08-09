<?php

/* @var $this yii\web\View */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use app\models\SubCategory;
use kartik\depdrop\DepDrop;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;

$this->title = Yii::t('app', 'Search Event');

$this->params['breadcrumbs'][] = $this->title;

$this->registerJs(
    '$(function() {

        $(".btn-join-event").on("click", function() {
            
            var $tr = $(this).closest("tr");
            
            var url = "'.Url::to(['site/ajax-join-event']).'";
            var event_id = $tr.find("#event_id").val();
            
            var posting = $.post(url, {"event_id":event_id});
            
            posting.done(function(data){ 
                $tr.find("#result-join-event").html(data);
            });
        });
    });',
    \yii\web\View::POS_READY,
    'change-cursor-to-hand'
);
?>


<div class="container">
    <div class="row">
        <div class="container" style="margin-top: 1%;">
            <div class="col-md-6 col-md-offset-3">

                <!-- Search Form -->
                <?php $form = ActiveForm::begin(['method' => 'get']); ?>

                <!-- Search Field -->
                <div class="row">
                    <h1 class="text-center">Search Academic Event</h1>

                    <?php if ($errors) { ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php foreach($errors['search'] as $key => $value) {?>
                                    <li><?php echo $value; ?></li>
                                <?php } ?>
                            </ul>
                        </div>
                    <?php } ?>

                    <div class="form-group">
                        <div class="input-group">
                            <?= Html::activeTextInput($model, 'search', ['placeholder' => 'Search', 'class' => 'form-control']); ?>
                            <span class="input-group-btn">
                                <button class="btn btn-success" type="submit" name="btn_search"><span class="glyphicon glyphicon-search" aria-hidden="true"><span style="margin-left:10px;">Search</span></button>
                            </span>
                        </div>
                        <ul class="nav nav-pills">
                            <li role="presentation" class="disabled"><a href="#">Basic Search</a></li>
                            <li role="presentation"><?php echo Html::a('Advanced Search', ['site/advanced-search']) ?></li>
                        </ul>
                    </div>
                </div>

                <?php ActiveForm::end(); ?>
                <!-- End of Search Form -->

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">

            <h2>Incoming Event</h2>

            <table class="table">
                <?php foreach ($events as $key => $value) { ?>
                    <tr>
                        <td style="vertical-align: middle;"><?php echo Yii::$app->formatter->asDate($value->start_date, 'full') ?></td>
                        <td>
                            <h4><?php echo $value->title ?></h4>
                            <?php echo $value->speaker->name ?> | <?php echo $value->venue; ?>
                        </td>
                        <td style="width: 180px;">
                            <?php if ($value->register_date >= date('Y-m-d')) { ?>
                                <div id="result-join-event">
                                    <input type="hidden" id="event_id" value="<?php echo $value->id ?>">
                                    <button type="button" class="btn btn-info btn-join-event">Join this event</button>
                                </div>
                            <?php } ?>
                        </td>
                    </tr>
                <?php } ?>
            </table>

        </div>
    </div>
</div>