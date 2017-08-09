<?php
use yii\helpers\Html;

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


    <style>
        .content-wrapper
        {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body class="hold-transition skin-yellow-light layout-top-nav">
<?php $this->beginBody() ?>
<div class="wrapper">

    <?= $this->render(
        'content-empty.php',
        ['content' => $content, 'directoryAsset' => $directoryAsset]
    ) ?>

</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>