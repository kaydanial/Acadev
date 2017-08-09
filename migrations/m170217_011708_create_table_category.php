<?php

use yii\db\Migration;

class m170217_011708_create_table_category extends Migration
{
    public function up()
    {
        $this->createTable('category', array(
            'id' => $this->primaryKey(),
            'category_name' => $this->string(),
            'status'     => $this->boolean()->defaultValue(1),
            'created_at' => $this->dateTime(),
            'created_by' => $this->string(),
            'updated_at' => $this->timestamp(),
            'updated_by' => $this->string(),
        ));
    }

    public function down()
    {
        $this->dropTable('category');
    }
}
