<?php
use yii\widgets\LinkPager;
use yii\helpers\Html;
use yii\helpers\Url;

$base_url = Yii::$app->request->baseUrl;

$this->title = Yii::t('app', 'Speaker : ') . $model->name;

$this->params['breadcrumbs'][] = $this->title;

if ($model->image_path) {
    $pathImg = $base_url . $model->image_path;
} else {
    $pathImg = $base_url . '/img/no-profile.png';
}

$this->registerJs(
    '$(function() {
        $(\'.php\').hover(function() {
            $(this).css(\'cursor\',\'pointer\');
        });
    });',
    \yii\web\View::POS_READY,
    'change-cursor-to-hand'
);
?>

<p>
    <a href="<?php echo Yii::$app->request->referrer?>" class="btn btn-warning btn-sm">Back</a>
</p>
<div class="row">
    <div class="col-md-5">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Speaker Details</h3>
            </div><!-- box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-xs-3">
                        <?= Html::img($pathImg, [
                            'class' => 'img-rounded img-responsive thumbnail',
                            'alt'   => $model->name,
                            'style' => 'width:180px;',
                        ]) ?>
                    </div>
                    <div class="col-xs-9">

                        <h3><?php echo $model->name ?></h3>

                        <i class="fa fa-envelope"></i> <?php echo ($model->email) ? $model->email:'-'; ?> <br>
                        <i class="fa fa-phone"></i> <?php echo ($model->phone_no) ? $model->phone_no:'-'; ?> <br> <br>

                        <address>
                            <b>Description</b> <br>

                            <?php
                            if ($model->description)
                                echo nl2br($model->description);
                            else
                                echo '-';
                            ?>
                        </address>

                        <?php if ($model->facebook) { ?>
                            <a href="<?php echo $model->facebook ?>" target="_blank">
                                <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'facebook.png', [
                                    'class' => '',
                                    'style' => 'width:50px; padding:5px;',
                                ]) ?>
                            </a>
                        <?php } ?>


                        <?php if ($model->twitter) { ?>
                            <a href="<?php echo $model->twitter ?>" target="_blank">
                                <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'twitter.png', [
                                    'class' => '',
                                    'style' => 'width:50px; padding:5px;',
                                ]) ?>
                            </a>
                        <?php } ?>


                        <?php if ($model->linkedin) { ?>
                            <a href="<?php echo $model->linkedin ?>" target="_blank">
                                <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'linkedin.png', [
                                    'class' => '',
                                    'style' => 'width:50px; padding:5px;',
                                ]) ?>
                            </a>
                        <?php } ?>

                    </div>
                </div>
            </div><!-- box-body -->

            <div class="box-footer">
                <h4>Rate this speaker</h4>
                <?php $ajax_location = Url::to(['site/ajax-rate-speaker'], true) ?>
                <div class="div">
                    <p>

                        <?php for ($i = 1; $i <= 5; $i++) { ?>

                            <?php
                            if ($rating) {
                                if ($i <= $rating->rate_id) {
                                    $image = Yii::$app->params['baseUrl'] . "/img/star2.png";
                                }
                                else {
                                    $image = Yii::$app->params['baseUrl'] . "/img/star1.png";
                                }
                            }
                            else
                            {
                                $image = Yii::$app->params['baseUrl'] . "/img/star1.png";
                            }

                            ?>

                            <input type="hidden" id="php<?php echo $i; ?>_hidden" value="<?php echo $i ?>">
                            <img src="<?php echo $image ?>" onclick="speaker(this.id);" id="php<?php echo $i; ?>" class="php">

                        <?php } ?>


                        <input type="hidden" name="base_url" id="base_url" value="<?php echo Yii::$app->params['baseUrl'] ?>">
                        <input type="hidden" name="phprating" id="phprating" value="0">
                        <input type="hidden" name="ajax_location" id="ajax_location" value="<?php echo $ajax_location ?>">
                        <input type="hidden" name="speaker_id" id="speaker_id" value="<?php echo $model->id ?>">
                    </p>
                </div>

                <div id="result"></div>
            </div><!-- box-footer -->
        </div><!-- box -->
    </div><!-- col 5 -->
    <div class="col-md-7">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Event List</h3>
            </div><!-- box-header -->
            <div class="box-body">

                <ul>
                    <?php foreach ($model->events as $key => $value) { ?>
                        <li>
                            <?php echo $value->title ?>
                            <?php if ($value->start_date >= date('Y-m-d')) { ?>
                                <sup><span style="color: red;">New</span></sup>
                            <?php } ?>
                        </li>
                    <?php } ?>
                </ul>

            </div><!-- box-body -->
        </div><!-- box -->
    </div><!-- col 7 -->
</div>