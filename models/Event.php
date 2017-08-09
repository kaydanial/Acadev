<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "event".
 *
 * @property integer $id
 * @property integer $user_id
 * @property integer $category_id
 * @property integer $sub_category_id
 * @property integer $event_type_id
 * @property string $title
 * @property string $description
 * @property string $register_date
 * @property string $register_end_date
 * @property string $past_event
 * @property string $city
 * @property string $state
 * @property string $organization
 * @property string $institution
 * @property string $fees
 * @property string $link
 * @property string $start_date
 * @property string $end_date
 * @property string $venue
 * @property string $tags
 * @property integer $status
 * @property string $created_at
 * @property string $created_by
 * @property string $updated_at
 * @property string $updated_by
 * @property string $rating_mark
 * @property integer $num_rate
 * @property integer $num_view
 * @property integer $speaker_id
 *
 * @property Speaker $speaker
 * @property Category $category
 * @property SubCategory $subCategory
 * @property EventType $eventType
 * @property User $user
 * @property EventJoin[] $eventJoins
 * @property EventRating[] $eventRatings
 */
class Event extends \yii\db\ActiveRecord
{
    public $search;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'event';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['speaker_id'], 'required'],
            [['user_id', 'category_id', 'sub_category_id', 'event_type_id', 'status', 'num_rate', 'num_view', 'speaker_id'], 'integer'],
            [['description', 'fees'], 'string'],
            [['register_date', 'register_end_date', 'start_date', 'end_date', 'created_at', 'updated_at'], 'safe'],
            [['title', 'past_event', 'city', 'state', 'organization', 'institution', 'link', 'venue', 'tags', 'created_by', 'updated_by', 'rating_mark'], 'string', 'max' => 255],
            [['speaker_id'], 'exist', 'skipOnError' => true, 'targetClass' => Speaker::className(), 'targetAttribute' => ['speaker_id' => 'id']],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => Category::className(), 'targetAttribute' => ['category_id' => 'id']],
            [['sub_category_id'], 'exist', 'skipOnError' => true, 'targetClass' => SubCategory::className(), 'targetAttribute' => ['sub_category_id' => 'id']],
            [['event_type_id'], 'exist', 'skipOnError' => true, 'targetClass' => EventType::className(), 'targetAttribute' => ['event_type_id' => 'id']],
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
            'user_id' => Yii::t('app', 'Organizer'),
            'category_id' => Yii::t('app', 'Domain'),
            'sub_category_id' => Yii::t('app', 'Sub Domain'),
            'event_type_id' => Yii::t('app', 'Event Type'),
            'title' => Yii::t('app', 'Title'),
            'description' => Yii::t('app', 'Description'),
            'register_date' => Yii::t('app', 'Register Date'),
            'register_end_date' => Yii::t('app', 'Register End Date'),
            'past_event' => Yii::t('app', 'Past Event'),
            'city' => Yii::t('app', 'City'),
            'state' => Yii::t('app', 'State'),
            'organization' => Yii::t('app', 'Organization'),
            'institution' => Yii::t('app', 'Institution'),
            'fees' => Yii::t('app', 'Fees'),
            'link' => Yii::t('app', 'Link'),
            'start_date' => Yii::t('app', 'Start Date'),
            'end_date' => Yii::t('app', 'End Date'),
            'venue' => Yii::t('app', 'Venue'),
            'tags' => Yii::t('app', 'Tags'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'updated_by' => Yii::t('app', 'Updated By'),
            'rating_mark' => Yii::t('app', 'Rating Mark'),
            'num_rate' => Yii::t('app', 'Num Rate'),
            'num_view' => Yii::t('app', 'Num View'),
            'speaker_id' => Yii::t('app', 'Speaker'),
            'search' => Yii::t('app', 'Carian'),
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
    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSubCategory()
    {
        return $this->hasOne(SubCategory::className(), ['id' => 'sub_category_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEventType()
    {
        return $this->hasOne(EventType::className(), ['id' => 'event_type_id']);
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
    public function getEventJoins()
    {
        return $this->hasMany(EventJoin::className(), ['event_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEventRatings()
    {
        return $this->hasMany(EventRating::className(), ['event_id' => 'id']);
    }
}
