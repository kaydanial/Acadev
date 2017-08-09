<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "speaker_rating".
 *
 * @property integer $id
 * @property integer $speaker_id
 * @property integer $rate_id
 * @property string $unique_id
 * @property integer $is_active
 * @property string $timestamp
 *
 * @property RateMark $rate
 * @property Speaker $speaker
 */
class SpeakerRating extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'speaker_rating';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['speaker_id', 'rate_id', 'is_active'], 'integer'],
            [['timestamp'], 'safe'],
            [['unique_id'], 'string', 'max' => 255],
            [['rate_id'], 'exist', 'skipOnError' => true, 'targetClass' => RateMark::className(), 'targetAttribute' => ['rate_id' => 'id']],
            [['speaker_id'], 'exist', 'skipOnError' => true, 'targetClass' => Speaker::className(), 'targetAttribute' => ['speaker_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'speaker_id' => Yii::t('app', 'Speaker ID'),
            'rate_id' => Yii::t('app', 'Rate ID'),
            'unique_id' => Yii::t('app', 'Unique ID'),
            'is_active' => Yii::t('app', 'Is Active'),
            'timestamp' => Yii::t('app', 'Timestamp'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRate()
    {
        return $this->hasOne(RateMark::className(), ['id' => 'rate_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSpeaker()
    {
        return $this->hasOne(Speaker::className(), ['id' => 'speaker_id']);
    }
}
