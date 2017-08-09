<?php
namespace app\models;
use yii\base\Model;
use Yii;

class SearchForm extends Model
{
    public $search;

    public function rules()
    {
        return [
            [['search'], 'required'],
            [['search'], 'string', 'min' => 2]
        ];
    }
}