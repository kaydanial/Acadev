<?php
use yii\widgets\LinkPager;
use yii\helpers\Html;

$base_url = Yii::$app->request->baseUrl;

$this->title = Yii::t('app', 'List Speaker');

$this->params['breadcrumbs'][] = $this->title;

$this->registerCssFile('@web/css/speaker-list.css');
?>

<div class="container">
    <div class="shadow">
        <?php foreach($model as $key => $value) { ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="box-customn">
                <div class="img-wrap-tailor">
                    <a href="<?php echo \yii\helpers\Url::to(['site/view-speaker', 'id' => $value->id]) ?>" class=""><img src="<?php echo $base_url . $value->image_path ?>"/></a>
                    <span>View Speaker</span>
                </div>
                <div class="imfo-area">
                    <h3><?php echo $value->name ?></h3>
                    <p><i class="fa fa-envelope"></i> <?php echo $value->email ?></p>
                    <p><i class="fa fa-phone"></i> <?php echo ($value->phone_no) ? $value->phone_no: '- none -'; ?></p>


                </div>
                <p style="text-align: center;">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>

                        <?php
                        if ($value->rating_mark) {
                            if ($i <= $value->rating_mark) {
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
                        <img src="<?php echo $image ?>" id="phps<?php echo $i; ?>" class="phps" width="30">

                    <?php } ?>
                </p>
            </div>
        </div>
        <?php } ?>

    </div>
</div>

<?php
// display pagination
echo LinkPager::widget([
    'pagination' => $pages,
]);
?>

<?php foreach ($model as $key => $value) { ?>
    <img class="src-image"  src="<?php echo $base_url . $value->image_path ?>"/>
<?php } ?>
