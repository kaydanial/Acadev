<?php

use yii\db\Migration;

class m170217_011033_event_type extends Migration
{
    public function up()
    {
        $this->createTable('event_type', array(
            'id' => $this->primaryKey(),
            'event_type_name' => $this->string(),
            'created_at' => $this->dateTime(),
            'created_by' => $this->string(),
            'updated_at' => $this->timestamp(),
            'updated_by' => $this->string(),
        ));
    }

    public function down()
    {
        $this->dropTable('event_type');
    }
}
