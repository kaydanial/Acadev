<?php
use yii\helpers\Html;
?>
<header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <?= Html::a(Yii::$app->params['appName'], Yii::$app->homeUrl, ['class' => 'navbar-brand']) ?>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse pull-left" id="navbar-collapse">

                <?= dmstr\widgets\Menu::widget(
                    [
                        'options' => ['class' => 'nav navbar-nav'],
                        'items' => [
                            ['label' => 'Incoming Event', 'icon'=>'search', 'url' => ['/site/index']],
                            ['label' => 'Speaker', 'icon'=>'users', 'url' => ['/site/speaker']],
                            ['label' => 'Past Event', 'icon'=>'users', 'url' => ['/past-event']],
                            ['label' => 'My Dashboard', 'icon' => 'dashboard', 'url' => ['/dashboard'], 'visible' => !Yii::$app->user->isGuest],

                        ],
                    ]
                ) ?>

            </div>
            <!-- /.navbar-collapse -->



            <?php if (!Yii::$app->user->isGuest) { ?>
                <div class="navbar-custom-menu">

                    <ul class="nav navbar-nav">

                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                                <span class="hidden-xs">
                            <?php echo (Yii::$app->user->identity->profile->name) ? Yii::$app->user->identity->profile->name: Yii::$app->user->identity->username ?>
                        </span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle"
                                         alt="User Image"/>

                                    <p>
                                        <?php echo (Yii::$app->user->identity->profile->name) ? Yii::$app->user->identity->profile->name: Yii::$app->user->identity->username ?>
                                        <small><?php echo Yii::$app->formatter->asDate(Yii::$app->user->identity->created_at, 'long') ?></small>
                                    </p>
                                </li>

                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <?= Html::a('Profile', ['/user/profile'], ['class' => 'btn btn-default btn-flat']) ?>
                                    </div>
                                    <div class="pull-right">
                                        <?= Html::a(
                                            'Sign out',
                                            ['/user/logout'],
                                            ['data-method' => 'post', 'class' => 'btn btn-default btn-flat']
                                        ) ?>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            <?php } else { ?>
                <div class="navbar-custom-menu">
                    <?= dmstr\widgets\Menu::widget(
                        [
                            'options' => ['class' => 'nav navbar-nav'],
                            'items' => [
                                ['label' => 'Login', 'icon'=>'lock', 'url' => ['/dashboard'], 'visible' => Yii::$app->user->isGuest],
                                ['label' => 'Register', 'icon'=>'user-plus', 'url' => ['/user/register'], 'visible' => Yii::$app->user->isGuest],
                            ],
                        ]
                    ) ?>
                </div>
            <?php } ?>
        </div>
        <!-- /.container-fluid -->
    </nav>
</header>