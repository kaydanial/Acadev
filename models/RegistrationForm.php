<?php
namespace app\models;

use Yii;
use dektrium\user\models\Token;
use dektrium\user\models\RegistrationForm as BaseRegistrationForm;

class RegistrationForm extends BaseRegistrationForm
{
	/**
     * Registers a new user account. If registration was successful it will set flash message.
     *
     * @return bool
     */
    public function registerOrganizer()
    {
        if (!$this->validate()) {
            return false;
        }

        /** @var User $user */
        $user = Yii::createObject(User::className());
        $user->setScenario('register');
        $this->loadAttributes($user);

        if (!$user->registerOrganizer()) {
            return false;
        }

        Yii::$app->session->setFlash(
            'info',
            Yii::t(
                'user',
                'Your account has been created and please login using your username and password registered.'
            )
        );

        return true;
    }

    public function register()
    {
        if (!$this->validate()) {
            return false;
        }

        /** @var User $user */
        $user = Yii::createObject(User::className());
        $user->setScenario('register');
        $this->loadAttributes($user);

        if (!$user->register()) {
            return false;
        }

        Yii::$app->session->setFlash(
            'info',
            Yii::t(
                'user',
                'Your account has been created and please login using your username and password registered.'
            )
        );

        return true;
    }

}