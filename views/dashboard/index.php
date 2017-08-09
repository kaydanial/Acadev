<?php
/* @var $this yii\web\View */
$this->title = "Dashboard";

$this->params['breadcrumbs'][] = $this->title;
?>
<!-- Info boxes -->
<div class="row">

    <!-- fix for small devices only -->
    <div class="clearfix visible-sm-block"></div>

    <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-database"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">New Event</span>
                <span class="info-box-number"><?php echo $total_event ?></span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>


    <!-- /.col -->
    <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">Total Speakers</span>
                <span class="info-box-number"><?php echo $total_speaker ?></span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <!-- /.col -->

    <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-gear"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">Event Joined</span>
                <span class="info-box-number"><?php echo $total_joined_event ?></span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>

</div>
<!-- /.row -->

<div class="row">

    <div class="col-md-12">

        <!-- TABLE: LATEST ORDERS -->
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Upcoming Event</h3>

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
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Title</th>
                                <th>Register Date</th>
                                <th>Event Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($events as $key => $value) { ?>
                                <tr>
                                    <td><a href="pages/examples/invoice.html"><?php echo ++$key ?></a></td>
                                    <td>
                                        <?php echo $value->title ?> <br>
                                        <small><?php echo $value->venue ?></small>
                                    </td>
                                    <td>
                                        <?php echo date('d-m-Y', strtotime($value->register_date)) ?>
                                        <?php
                                        if ($value->register_end_date) {
                                            echo ' - ' . date('d-m-Y', strtotime($value->register_end_date));
                                        }
                                        ?>
                                    </td>
                                    <td>
                                        <?php echo Yii::$app->formatter->asDate($value->start_date, 'full') ?>
                                        <?php
                                        if ($value->end_date) {
                                            echo ' - ' . Yii::$app->formatter->asDate($value->end_date, 'full');
                                        }
                                        ?>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
        </div>
    </div><!-- /.col-md-8 -->

</div><!-- /.row -->