<?php
$base_url = Yii::$app->request->baseUrl;
/* @var $this yii\web\View */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use app\models\SubCategory;
use kartik\depdrop\DepDrop;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;

$this->title = Yii::t('app', 'View Event Details');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Search Event'), 'url' => ['/']];
$this->params['breadcrumbs'][] = $this->title;

$this->registerJs(
    '$(function() {
        $(\'.php\').hover(function() {
            $(this).css(\'cursor\',\'pointer\');
        });
        
        $("#btn-join-event").click(function() {
            
            var url = "'.Url::to(['site/ajax-join-event']).'";
            var event_id = "'.$event->id.'";
                    
            var posting = $.post(url, {"event_id":event_id});
            
            posting.done(function(data){ 
                $("#result-join-event").html(data);
            });
        });
    });',
    \yii\web\View::POS_READY,
    'change-cursor-to-hand'
);
?>


<div class="row">
    <div class="col-md-4">
        
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Speaker's Profile</h3>
            </div><!-- box-header -->
            <div class="box-body">
                <?php
                if ($event->speaker->image_path) {
                    $pathImg = Yii::$app->request->baseUrl . $event->speaker->image_path;
                } else {
                    $pathImg = Yii::$app->request->baseUrl . '/img/no-profile.png';
                }
                ?>

                <img src="<?php echo $pathImg ?>" alt="" style="width:180px;" class="thumbnail img-responsive">

                <h3><?php echo $event->speaker->name ?></h3>

                <i class="fa fa-envelope"></i> <?php echo $event->speaker->email ?> <br>
                <i class="fa fa-phone"></i> <?php echo $event->speaker->phone_no ?> <br> <br>

                <address>
                    <b>Description</b> <br>
                    <?php echo nl2br($event->speaker->description) ?>
                </address>

                <?php if ($event->speaker->facebook) { ?>
                    <a href="<?php echo $event->speaker->facebook ?>" target="_blank">
                        <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'facebook.png', [
                            'class' => 'img-rounded img-responsive ',
                            'style' => 'width:50px; padding:10px;',
                        ]) ?>
                    </a>
                <?php } ?>


                <?php if ($event->speaker->twitter) { ?>
                    <a href="<?php echo $event->speaker->twitter ?>" target="_blank">
                        <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'twitter.png', [
                            'class' => 'img-rounded img-responsive ',
                            'style' => 'width:50px; padding:10px;',
                        ]) ?>
                    </a>
                <?php } ?>


                <?php if ($event->speaker->linkedin) { ?>
                    <a href="<?php echo $event->speaker->linkedin ?>" target="_blank">
                        <?= Html::img($base_url.DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'linkedin.png', [
                            'class' => 'img-rounded img-responsive ',
                            'style' => 'width:50px; padding:10px;',
                        ]) ?>
                    </a>
                <?php } ?>


                <?php /*
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Followers</b> <a class="pull-right">1,322</a>
                        </li>
                        <li class="list-group-item">
                            <b>Following</b> <a class="pull-right">543</a>
                        </li>
                        <li class="list-group-item">
                            <b>Friends</b> <a class="pull-right">13,287</a>
                        </li>
                    </ul>
                    */ ?>

            </div><!-- box-body -->
            <div class="box-footer">
                <h4>Rate this event</h4>
                <?php $ajax_location = Url::to(['site/ajax-update'], true) ?>
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
                            <img src="<?php echo $image ?>" onclick="change(this.id);" id="php<?php echo $i; ?>" class="php">

                        <?php } ?>


                        <input type="hidden" name="base_url" id="base_url" value="<?php echo Yii::$app->params['baseUrl'] ?>">
                        <input type="hidden" name="phprating" id="phprating" value="0">
                        <input type="hidden" name="ajax_location" id="ajax_location" value="<?php echo $ajax_location ?>">
                        <input type="hidden" name="event_id" id="event_id" value="<?php echo $event->id ?>">
                    </p>
                </div>

                <div id="result"></div>
            </div>
        </div><!-- box -->
        
    </div><!-- /. col 4 -->

    <div class="col-md-8">

        <div class="box box-primary">
            <div class="box-header">
                <h3 class="box-title">Title : <?php echo $event->title ?></h3>

                <div class="box-tools">

                    <?php if ($event_join) { ?>

                        <span class="label label-success">You already join this event</span>

                    <?php } else { ?>
                        <?php if ($event->register_date >= date('Y-m-d')) { ?>
                            <span id="result-join-event">
                                <button type="button" class="btn btn-info" id="btn-join-event">Join this event</button>
                            </span>
                        <?php } ?>
                    <?php } ?>

                </div>
            </div><!-- box-header -->
            <div class="box-body">

                <address>
                    <b>Registration date</b><br>
                    <?php if ($event->register_end_date=='') { ?>
                        Before <?php echo Yii::$app->formatter->asDate($event->register_date, 'full') ?>
                    <?php } else {
                        echo Yii::$app->formatter->asDate($event->register_date, 'long') . ' to '. Yii::$app->formatter->asDate($event->register_end_date, 'long');
                    } ?>
                </address>

                <address>
                    <b>Event date</b><br>

                    <?php echo Yii::$app->formatter->asDate($event->start_date, 'full') ?>
                    <?php
                    if ($event->end_date!='') {
                        echo ' - ' . Yii::$app->formatter->asDate($event->end_date, 'full');
                    }
                    ?>
                </address>

                <?php if ($event->venue!='') { ?>

                    <address>
                        <b>Venue</b><br>
                        <?php echo $event->venue; ?>
                    </address>

                <?php } ?>
                <?php if ($event->past_event!='') { ?>

                    <address>
                        <b>Past Event</b><br>
                        <?php echo $event->past_event; ?>
                    </address>

                <?php } ?>
                <?php if ($event->city!='') { ?>

                    <address>
                        <b>City</b><br>
                        <?php echo $event->city; ?>
                    </address>

                <?php } ?>

                <?php if ($event->state!='') { ?>

                    <address>
                        <b>State</b><br>
                        <?php echo $event->state; ?>
                    </address>

                <?php } ?>

                <?php if ($event->link!='') { ?>

                    <address>
                        <b>Link</b><br>
                        <a href="<?php echo $event->link ?>" target="_blank"><?php echo $event->link ?></a>
                    </address>

                <?php } ?>

                <hr>

                <address>
                    <b>Description</b><br>
                    <?php echo nl2br($event->description) ?>
                </address>

                <hr>

                Tags : <?php echo $event->tags ?>

            </div><!-- box-body -->

        </div><!-- box -->

    </div><!-- /. col 8 -->
</div><!-- row -->

<a href="<?php echo Yii::$app->request->referrer?>" class="btn btn-warning">Back</a>