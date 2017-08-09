<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

/**
 * 1. page search
 * 2. search result
 * 3. advanced search
 * 4. view event detais
 *
 * semua di atas, papar default template. Tak de sidebar
 */
if (in_array(Yii::$app->controller->id, [
    'past-event',
])) {
    /**
     * This is for homepage
     */
    echo $this->render(
        'main-top-navbar',
        ['content' => $content]
    );

}
elseif (Yii::$app->controller->id == 'site' && in_array(Yii::$app->controller->action->id, ['index','event', 'view-event', 'advanced-search', 'error', 'speaker', 'view-speaker'])) {

    /**
     * This is for homepage
     */
    echo $this->render(
        'main-top-navbar',
        ['content' => $content]
    );

}
elseif (in_array(Yii::$app->controller->action->id, ['login', 'register', 'resend', 'organizer'])) {
/**
 * Do not use this code in your template. Remove it. 
 * Instead, use the code  $this->layout = '//main-login'; in your controller.
 */
    echo $this->render(
        'main-top-navbar',
        ['content' => $content]
    );
} else {


    app\assets\AppAsset::register($this);


    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    ?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title>Acadev | <?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>
    <body class="hold-transition skin-yellow-light sidebar-mini">
    <?php $this->beginBody() ?>
    <div class="wrapper">

        <?= $this->render(
            'header.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'left.php',
            ['directoryAsset' => $directoryAsset]
        )
        ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>

    </div>

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>
