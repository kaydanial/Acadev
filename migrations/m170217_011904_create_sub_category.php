<?php

use yii\db\Migration;

class m170217_011904_create_sub_category extends Migration
{
    public function up()
    {
        $this->createTable('sub_category', array(
            'id' => $this->primaryKey(),
            'category_id' => $this->integer(),
            'sub_category_name' => $this->string(),
            'status' => $this->boolean()->defaultValue(1),
            'created_at' => $this->dateTime(),
            'created_by' => $this->string(),
            'updated_at' => $this->timestamp(),
            'updated_by' => $this->string(),
        ));

        $this->addForeignKey('fk_sub_category_category_id', 'sub_category', 'category_id', 'category', 'id', 'CASCADE', 'CASCADE');
    }

    public function down()
    {
        $this->dropForeignKey('fk_sub_category_category_id', 'sub_category');
        $this->dropTable('sub_category');
    }
}
