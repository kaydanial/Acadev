<style>
    a {
        color: #0254EB
    }
    a:visited {
        color: #0254EB
    }
    a.morelink {
        text-decoration:none;
        outline: none;
    }
    .morecontent span {
        display: none;
    }
    .comment {
        margin: 10px;
    }
</style>
<?php

/* @var $this yii\web\View */
use yii\widgets\ActiveForm;
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = Yii::t('app', 'Search Results');

$this->params['breadcrumbs'][] = $this->title;


?>
<!-- Search Form -->
<?php $form = ActiveForm::begin(['method' => 'get']); ?>

<!-- Search Field -->

<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <div class="input-group">
                <?= Html::activeTextInput($model, 'search', ['placeholder' => 'Search', 'class' => 'form-control']); ?>
                <span class="input-group-btn">
                    <button class="btn btn-success" type="submit" name="btn_search">
                        <span class="glyphicon glyphicon-search" aria-hidden="true">
                        <span style="margin-left:10px;">Search</span>
                    </button>
                </span>
            </div>
            <ul class="nav nav-pills">
                <li role="presentation" class="disabled"><a href="#">Basic Search</a></li>
                <li role="presentation"><?php echo Html::a('Advanced Search', ['site/advanced-search']) ?></li>
            </ul>
        </div>
    </div>
</div>

<?php ActiveForm::end(); ?>

<hr>

<h5>Search result : <?php

    if($result!=null)
        echo $queryCount->count()+$recommend->count();
    else
        echo $queryCount->count();


    ?></h5>

<br>
<?php if($result!=null){?>
<div class="row">

    <div class="col-md-12">
    <div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">Recommended Event</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table class="table no-margin">
        <!-- /.box-body -->
        <?php foreach ($result as $a => $b) { ?>

                <h3><?php echo Html::a($b->title, ['site/view-event', 'id' => $b->id]) ?></h3>


                <div class="comment more">
                    <?php echo nl2br($b->description) ?>
                </div>

                <p><?php echo Yii::$app->formatter->asDate($b->start_date, 'full') ?> | <?php echo $b->venue; ?></p>
                <?php

                if (strtotime($b->start_date) >= strtotime(date('Y-m-d'))) {
                    echo '<span class="label label-success">INCOMING EVENT</span>';
                } else {
                    echo '<span class="label label-danger">INACTIVE</span>';
                }
                echo '<span class="label label-info">RECOMMENDED EVENT</span>';


                echo '
        <br><br>Attended by '.$storeName[$storeEvent[$b->id]].' from FSKTM';


                }
                ?>
                </table></div></div></div></div>




<?php } ?>
<hr>
<?php foreach ($results as $key => $value) { ?>

    <div class="row">
        <div class="col-md-9">

            <h3><?php echo Html::a($value->title, ['site/view-event', 'id' => $value->id]) ?></h3>

            <div class="comment more">
                <?php echo nl2br($value->description) ?>
            </div>

            <p><?php echo Yii::$app->formatter->asDate($value->start_date, 'full') ?> | <?php echo $value->venue; ?></p>

            <?php
            if (strtotime($value->start_date) >= strtotime(date('Y-m-d'))) {
                echo '<span class="label label-success">INCOMING EVENT</span>';
            }
            else {
                echo '<span class="label label-danger">INACTIVE</span>';
            }

            ?>

        </div><!-- /. col 9 -->
        <div class="col-md-3">
            <div class="div">
                <p>
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
                        <img src="<?php echo $image ?>" id="php<?php echo $i; ?>" class="php">

                    <?php } ?>
                </p>
                <p>(<?php echo ($value->num_rate) ? $value->num_rate:'0'; ?>)</p>
                <br>
                <p><?php echo ($value->num_view) ? $value->num_view:'0'; ?> View</p>
            </div>
        </div>
    </div><!-- /. row -->

    <hr>
<?php } ?>

<?php
// display pagination
echo LinkPager::widget([
    'pagination' => $pages,
]);
?>

<?php $this->registerJs(
    '
    $(document).ready(function() {
        var showChar = 200;
        var ellipsestext = "...";
        var moretext = "see more";
        var lesstext = "less";
        $(\'.more\').each(function() {
            var content = $(this).html();

            if(content.length > showChar) {

                var c = content.substr(0, showChar);
                var h = content.substr(showChar-1, content.length - showChar);

                var html = c + \'<span class="moreellipses">\' + ellipsestext+ \'&nbsp;</span><span class="morecontent"><span>\' + h + \'</span>&nbsp;&nbsp;<a href="" class="morelink">\' + moretext + \'</a></span>\';

                $(this).html(html);
            }

        });

        $(".morelink").click(function(){
            if($(this).hasClass("less")) {
                $(this).removeClass("less");
                $(this).html(moretext);
            } else {
                $(this).addClass("less");
                $(this).html(lesstext);
            }
            $(this).parent().prev().toggle();
            $(this).prev().toggle();
            return false;
        });
    });
    ',
    \yii\web\View::POS_READY,
    'my-button-handler'
); ?>

<!-- End of Search Form -->
