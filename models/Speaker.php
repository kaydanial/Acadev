<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "speaker".
 *
 * @property integer $id
 * @property integer $user_id
 * @property string $name
 * @property string $description
 * @property string $phone_no
 * @property string $facebook
 * @property string $linkedin
 * @property string $twitter
 * @property string $image_path
 * @property string $email
 * @property integer $num_rate
 * @property string $rating_mark
 *
 * @property Event[] $events
 * @property User $user
 */
class Speaker extends \yii\db\ActiveRecord
{
    public $img;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'speaker';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'num_rate'], 'integer'],
            [['description'], 'string'],
            [['rating_mark'], 'safe'],
            [['name', 'email'], 'required'],
            [['img'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, gif'], // uploaded file validation
            [['name', 'phone_no', 'facebook', 'linkedin', 'twitter', 'image_path', 'email'], 'string', 'max' => 255],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'user_id' => Yii::t('app', 'User ID'),
            'name' => Yii::t('app', 'Name'),
            'description' => Yii::t('app', 'Description'),
            'phone_no' => Yii::t('app', 'Phone No'),
            'facebook' => Yii::t('app', 'Facebook'),
            'linkedin' => Yii::t('app', 'Linkedin'),
            'twitter' => Yii::t('app', 'Twitter'),
            'image_path' => Yii::t('app', 'Image Path'),
            'email' => Yii::t('app', 'Email'),
            'img' => Yii::t('app', 'Please choose profile picture'),
            'num_rate' => Yii::t('app', 'Total Rate'),
            'rating_mark' => Yii::t('app', 'Rating Mark'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEvents()
    {
        return $this->hasMany(Event::className(), ['speaker_id' => 'id']);
    }
}
