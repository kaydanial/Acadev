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
use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = Yii::t('app', 'Advanced Search');

$this->params['breadcrumbs'][] = $this->title;

$this->registerJs(
    '$( function() {
    var dateFormat = "dd/mm/yy",
      from = $( "#from" )
        .datepicker({
          // defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 3,
          dateFormat:"dd-mm-yy"
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 3,
        dateFormat:"dd-mm-yy"
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );',
    \yii\web\View::POS_READY,
    'datepicker-range'
);
?>
<!-- Search Form -->
<?php $form = ActiveForm::begin(['method' => 'get', 'action' => 'advanced-search']); ?>

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

        <fieldset>
            <legend>Advanced Form</legend>
            <?= $form->field($model, 'category_id')->dropDownList($categoryList, ['id' => 'category-id', 'prompt' => '- select -']) ?>

            <?php
            $subCategories = array();

            if ($model->category_id)
            {
                $subCategories = \yii\helpers\ArrayHelper::map(\app\models\SubCategory::find()->where(['category_id' => $model->category_id])->all(), 'id', 'sub_category_name');
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

            <div class="form-group">
                <span class="col-md-2 control-label">Event Date</span>
                <div class="col-md-8">
                    <div class="form-group row">
                        <label for="inputKey" class="col-md-1 control-label">From</label>
                        <div class="col-md-5">
                            <input type="text" class="form-control" id="from" name="from" placeholder="Key" value="<?php echo (isset($_GET['from'])) ? $_GET['from']:'' ?>">
                        </div>
                        <label for="inputValue" class="col-md-1 control-label">To</label>
                        <div class="col-md-5">
                            <input type="text" class="form-control" id="to" name="to" placeholder="Value" value="<?php echo (isset($_GET['to'])) ? $_GET['to']:'' ?>">
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <button class="btn btn-success" type="submit" name="btn_search">
                        <span class="glyphicon glyphicon-search" aria-hidden="true">
                        <span style="margin-left:10px;">Search</span>
                </button>
            </div>
        
        </fieldset>

    </div><!-- col-md-6 -->
</div><!-- row -->

<?php ActiveForm::end(); ?>

<hr>
<?php if (count($results) > 0) { ?>
<h4>Search result : <?php echo $queryCount->count() ?></h4>

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
                        <img src="<?php echo $image ?>" onmouseover="change(this.id);" id="php<?php echo $i; ?>" class="php">

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
echo LinkPager::widget([
    'pagination' => $pages,
]);
?>

<?php } ?>
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
