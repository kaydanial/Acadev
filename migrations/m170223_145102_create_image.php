<?php

use yii\db\Migration;

class m170223_145102_create_image extends Migration
{
    public function up()
    {
        $this->createTable('image', [
            'id' => $this->primaryKey(),
            'path' => $this->string(),
            'type' => $this->string(),
            'size' => $this->string(),
            'name' => $this->string(),
            'ori_name' => $this->string(),
        ]);
    }

    public function down()
    {
        $this->dropTable('image');
    }
}
