<?php

namespace app\controllers;

use Yii;
use app\models\Speaker;
use app\models\SpeakerSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * SpeakerController implements the CRUD actions for Speaker model.
 */
class SpeakerController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Speaker models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new SpeakerSearch();
        $searchModel->user_id = Yii::$app->user->id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Speaker model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Speaker model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Speaker();

        if ($model->load(Yii::$app->request->post())) {

            $imageFiles = \yii\web\UploadedFile::getInstance($model, "img");

            $model->img = $imageFiles;

            $upload_path = \Yii::getAlias('@app/web/upload');
            if (!is_dir($upload_path)) {
                mkdir($upload_path, 0777, true);
            }

            $finding_photo_path = \Yii::getAlias('@app/web/upload/speaker_pic');
            if (!is_dir($finding_photo_path)) {
                mkdir($finding_photo_path, 0777, true);
            }

            // if ada file
            if($model->img) {

                $uid = uniqid(time(), true);

                $fileName = $uid . '.' . $model->img->extension;
                $filePath = $finding_photo_path . DIRECTORY_SEPARATOR . $fileName;
                if ($model->img->saveAs($filePath)) {
                    $path = DIRECTORY_SEPARATOR.'upload'.DIRECTORY_SEPARATOR.'speaker_pic' . DIRECTORY_SEPARATOR . $fileName;

                    // insert into table image
                    $model->image_path = $path;
                }

            }

            $model->user_id = Yii::$app->user->id;
            if ($model->save(false)) {
                Yii::$app->session->setFlash('success', 'Speaker details created');
                return $this->redirect(['index']);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Speaker model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            $imageFiles = \yii\web\UploadedFile::getInstance($model, "img");

            $model->img = $imageFiles;

            $upload_path = \Yii::getAlias('@app/web/upload');
            if (!is_dir($upload_path)) {
                mkdir($upload_path, 0777, true);
            }

            $finding_photo_path = \Yii::getAlias('@app/web/upload/speaker_pic');
            if (!is_dir($finding_photo_path)) {
                mkdir($finding_photo_path, 0777, true);
            }

            // if ada file
            if($model->img) {

                $uid = uniqid(time(), true);

                $fileName = $uid . '.' . $model->img->extension;
                $filePath = $finding_photo_path . DIRECTORY_SEPARATOR . $fileName;
                if ($model->img->saveAs($filePath)) {
                    $path = DIRECTORY_SEPARATOR.'upload'.DIRECTORY_SEPARATOR.'speaker_pic' . DIRECTORY_SEPARATOR . $fileName;

                    // insert into table image
                    $model->image_path = $path;
                }

            }

            $model->user_id = Yii::$app->user->id;
            if ($model->save(false)) {

                Yii::$app->session->setFlash('success', 'Speaker details updated');
                return $this->redirect(['index']);
            }

        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Speaker model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Speaker model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Speaker the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Speaker::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
