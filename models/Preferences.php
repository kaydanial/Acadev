<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user_interests".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $location
 * @property integer $speaker_id
 * @property integer $weekday
 * @property integer $paid
 * @property integer $time
 * @property integer $aday
 *
 * @property Speaker $speaker
 * @property User $user
 */
class Preferences extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_interests';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'user_id', 'speaker_id', 'weekday', 'paid', 'time', 'aday'], 'integer'],
            [['location'], 'string', 'max' => 30],
            [['user_id'], 'unique'],
            [['speaker_id'], 'exist', 'skipOnError' => true, 'targetClass' => Speaker::className(), 'targetAttribute' => ['speaker_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'location' => Yii::t('app', 'Location'),
            'speaker_id' => Yii::t('app', 'Speaker'),
            'weekday' => Yii::t('app', 'Weekday / Weekend'),
            'paid' => Yii::t('app', 'Paid'),
            'time' => Yii::t('app', 'Time'),
            'aday' => Yii::t('app', 'Duration'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSpeaker()
    {
        return $this->hasOne(Speaker::className(), ['id' => 'speaker_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
