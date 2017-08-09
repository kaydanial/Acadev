<?php
/**
 * Created by PhpStorm.
 * User: haezalmusa
 * Date: 24/05/2016
 * Time: 11:23 PM
 */

namespace app\controllers\user;

use app\models\Image;
use Yii;

use dektrium\user\controllers\SettingsController as BaseSettingsController;

class SettingsController extends BaseSettingsController
{
    /**
     * Shows profile settings form.
     * Extended add profile picture
     *
     * @return string|\yii\web\Response
     */
    public function actionProfile()
    {
        $model = $this->finder->findProfileById(Yii::$app->user->identity->getId());

        if ($model == null) {
            $model = Yii::createObject(Profile::className());
            $model->link('user', Yii::$app->user->identity);
        }

        $event = $this->getProfileEvent($model);

        $this->performAjaxValidation($model);

        $this->trigger(self::EVENT_BEFORE_PROFILE_UPDATE, $event);
        if ($model->load(Yii::$app->request->post())) {

            $imageFiles = \yii\web\UploadedFile::getInstance($model, "img");

            $model->img = $imageFiles;

            $upload_path = \Yii::getAlias('@app/web/upload');
            if (!is_dir($upload_path)) {
                mkdir($upload_path, 0777, true);
            }

            $finding_photo_path = \Yii::getAlias('@app/web/upload/profile_pic');
            if (!is_dir($finding_photo_path)) {
                mkdir($finding_photo_path, 0777, true);
            }

            // if ada file
            if($model->img) {

                $uid = uniqid(time(), true);
                $oriFileName = $model->img->name;
                $fileName = $uid . '.' . $model->img->extension;
                $filePath = $finding_photo_path . DIRECTORY_SEPARATOR . $fileName;
                if ($model->img->saveAs($filePath)) {
                    $path = '/upload/profile_pic/' . DIRECTORY_SEPARATOR . $fileName;

                    // insert into table image
                    $image = new Image;
                    $image->path = $path;
                    $image->size = (string)$model->img->size;
                    $image->type = $model->img->type;
                    $image->name = $fileName;
                    $image->ori_name = $oriFileName;

                    if (!$image->save()) {
                        print_r($image->errors);exit;
                    }
                    $model->image_id = $image->id; // set image id
                }

            }

            if ($model->save(false)) {

                Yii::$app->getSession()->setFlash('success', Yii::t('user', 'Your profile has been updated'));
                $this->trigger(self::EVENT_AFTER_PROFILE_UPDATE, $event);
                return $this->refresh();
            }
        }

        return $this->render('profile', [
            'model' => $model,
        ]);
    }
}