<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = Yii::t('app', 'MY Joined Event');

$this->params['breadcrumbs'][] = $this->title;
?>

<div class="box box-primary">
    <div class="box-header with-border">
        <h3 class="box-title"><?php echo Html::encode($this->title); ?></h3>

        <div class="box-tools">
            <div class="pull-right">
                Total Joined Event : <?php echo $countQuery->count() ?>
            </div>
        </div>
    </div><!-- box-header -->
    <div class="table-responsive">

        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Event</th>
                    <th>Speaker</th>
                    <th>Event Date</th>
                    <th style="width: 120px; min-width: 120px;"></th>
                </tr>
            </thead>

            <tbody>
                <?php foreach ($model as $key => $value) { ?>
                    <tr>
                        <td><?php echo Html::a($value->event->title, ['view-event', 'id' => $value->event->id]) ?></td>
                        <td><?php echo Html::a($value->event->speaker->name, ['view-speaker', 'id' => $value->event->speaker->id]) ?></td>
                        <td><?php echo $value->event->start_date ?> <?php echo ($value->event->end_date) ? ' - '.$value->event->end_date:'' ?></td>
                        <td>
                            <?php
                            $current_date = strtotime(date('Y-m-d'));
                            $event_date = strtotime($value->event->start_date);

                            if ($event_date > $current_date) {
                                echo Html::a('Cancel Joined', ['cancel-event', 'id' => $value->id], ['class' => 'btn btn-danger btn-xs', 'onclick' => 'return confirm("Are you sure to cancel this event?")']);
                            }
                            else {
                                echo '<span class="label label-warning">Past Event</span>';
                            }
                            ?>
                        </td>
                    </tr>
                <?php } ?>

                <?php if (!$model) { ?>
                    <tr>
                        <td colspan="5">No Joined Event</td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

    </div><!-- box-body -->
    <div class="box-footer">

        <?php
        // display pagination
        echo LinkPager::widget([
            'pagination' => $pages,
        ]);
        ?>
    </div>
</div><!-- box -->

