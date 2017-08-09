<?php
$base_url = Yii::$app->request->baseUrl;
use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Speaker */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Speakers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="speaker-view">

    <p>
        <a href="<?php echo Yii::$app->request->referrer?>" class="btn btn-warning btn-sm">Back</a>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary btn-sm']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger btn-sm',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?php

    if ($model->image_path) {
        $pathImg = $base_url . $model->image_path;
    } else {
        $pathImg = $base_url . '/img/no-profile.png';
    }
    ?>
    
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
    </div><!-- box -->

    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">Event List</h3>
        </div><!-- box-header -->
        <div class="box-body">

            <ul>
                <?php foreach ($model->events as $key => $value) { ?>
                    <li><?php echo $value->title ?></li>
                <?php } ?>
            </ul>

        </div><!-- box-body -->
    </div><!-- box -->



</div>
