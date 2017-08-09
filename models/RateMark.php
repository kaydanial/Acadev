<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "rate_mark".
 *
 * @property integer $id
 * @property string $mark
 *
 * @property EventRating[] $eventRatings
 */
class RateMark extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'rate_mark';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mark'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'mark' => Yii::t('app', 'Mark'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEventRatings()
    {
        return $this->hasMany(EventRating::className(), ['rate_id' => 'id']);
    }
}
