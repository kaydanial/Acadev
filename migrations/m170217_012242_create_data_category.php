<?php

use yii\db\Migration;

class m170217_012242_create_data_category extends Migration
{
    public function up()
    {
        $this->insert('category', array(
            'id' => 1,
            'category_name' => 'Arts',
        ));

        $this->insert('sub_category', array('category_id' => 1, 'sub_category_name' => 'Performing arts'));
        $this->insert('sub_category', array('category_id' => 1, 'sub_category_name' => 'Visual arts'));

        $this->insert('category', array(
            'id' => 2,
            'category_name' => 'Humanities',
        ));

        $this->insert('sub_category', array('category_id' => 2, 'sub_category_name' => 'Geography'));
        $this->insert('sub_category', array('category_id' => 2, 'sub_category_name' => 'History'));
        $this->insert('sub_category', array('category_id' => 2, 'sub_category_name' => 'Languages and literature'));
        $this->insert('sub_category', array('category_id' => 2, 'sub_category_name' => 'Philosophy'));

        $this->insert('category', array(
            'id' => 3,
            'category_name' => 'Social Sciences',
        ));

        $this->insert('sub_category', array('category_id' => 3, 'sub_category_name' => 'Economics'));
        $this->insert('sub_category', array('category_id' => 3, 'sub_category_name' => 'Law'));
        $this->insert('sub_category', array('category_id' => 3, 'sub_category_name' => 'Political science'));
        $this->insert('sub_category', array('category_id' => 3, 'sub_category_name' => 'Psychology'));
        $this->insert('sub_category', array('category_id' => 3, 'sub_category_name' => 'Sociology'));

        $this->insert('category', array(
            'id' => 4,
            'category_name' => 'Sciences',
        ));
        $this->insert('sub_category', array('category_id' => 4, 'sub_category_name' => 'Biology'));
        $this->insert('sub_category', array('category_id' => 4, 'sub_category_name' => 'Chemistry'));
        $this->insert('sub_category', array('category_id' => 4, 'sub_category_name' => 'Earth and space scienc'));
        $this->insert('sub_category', array('category_id' => 4, 'sub_category_name' => 'Mathematics'));
        $this->insert('sub_category', array('category_id' => 4, 'sub_category_name' => 'Physics'));

        $this->insert('category', array(
            'id' => 5,
            'category_name' => 'Applied Sciences',
        ));

        $this->insert('sub_category', array('category_id' => 5, 'sub_category_name' => 'Agriculture and agricultural sciences'));
        $this->insert('sub_category', array('category_id' => 5, 'sub_category_name' => 'Computer science'));
        $this->insert('sub_category', array('category_id' => 5, 'sub_category_name' => 'Engineering and technology'));
        $this->insert('sub_category', array('category_id' => 5, 'sub_category_name' => 'Medicine and health sciences'));

        $this->insert('category', array(
            'id' => 6,
            'category_name' => 'Others',
        ));
        $this->insert('sub_category', array('category_id' => 6, 'sub_category_name' => 'Publishing'));
        $this->insert('sub_category', array('category_id' => 6, 'sub_category_name' => 'Research Methodology'));
    }

    public function down()
    {
        $this->delete('category');
    }
}
