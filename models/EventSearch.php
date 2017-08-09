<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Event;

/**
 * EventSearch represents the model behind the search form about `app\models\Event`.
 */
class EventSearch extends Event
{
    public $search;
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'user_id', 'category_id', 'sub_category_id', 'event_type_id', 'status'], 'integer'],
            [['title', 'description', 'register_date', 'register_end_date', 'past_event', 'city', 'state', 'organization', 'institution', 'fees', 'link', 'start_date', 'end_date', 'venue', 'tags', 'created_at', 'created_by', 'updated_at', 'updated_by', 'speaker_id', 'search'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Event::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [ 'pageSize' => 10 ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'user_id' => $this->user_id,
            'category_id' => $this->category_id,
            'sub_category_id' => $this->sub_category_id,
            'event_type_id' => $this->event_type_id,
            'register_date' => $this->register_date,
            'register_end_date' => $this->register_end_date,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'status' => $this->status,
            'speaker_id' => $this->speaker_id,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'past_event', $this->past_event])
            ->andFilterWhere(['like', 'city', $this->city])
            ->andFilterWhere(['like', 'state', $this->state])
            ->andFilterWhere(['like', 'organization', $this->organization])
            ->andFilterWhere(['like', 'institution', $this->institution])
            ->andFilterWhere(['like', 'fees', $this->fees])
            ->andFilterWhere(['like', 'link', $this->link])
            ->andFilterWhere(['like', 'venue', $this->venue])
            ->andFilterWhere(['like', 'tags', $this->tags]);

        return $dataProvider;
    }
}
