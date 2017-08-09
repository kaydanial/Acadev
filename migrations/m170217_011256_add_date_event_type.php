<?php

use yii\db\Migration;

class m170217_011256_add_date_event_type extends Migration
{
    public function up()
    {
        $this->insert('event_type' ,array('id' => 1, 'event_type_name' => 'Workshop'));
        $this->insert('event_type' ,array('id' => 2, 'event_type_name' => 'Seminar'));
    }

    public function down()
    {
        $this->delete('event_type', array('id' => 1));
        $this->delete('event_type', array('id' => 2));
    }
}
