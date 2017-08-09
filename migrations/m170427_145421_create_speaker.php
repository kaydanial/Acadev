<?php

use yii\db\Migration;

class m170427_145421_create_speaker extends Migration
{
    public function up()
    {
        $this->createTable('speaker', [
            'id' => $this->primaryKey(),
            'user_id' => $this->integer(),
            'name' => $this->string(),
            'description' => $this->text(),
            'phone_no' => $this->string(),
            'facebook' => $this->string(),
            'linkedin' => $this->string(),
            'twitter' => $this->string(),
            'image_path' => $this->string(),
        ]);

        $this->addForeignKey('fk_speaker_user_id', 'speaker', 'user_id', 'user', 'id', 'SET NULL', 'SET NULL');
    }

    public function down()
    {
        $this->dropForeignKey('fk_speaker_user_id', 'speaker');
        $this->dropTable('speaker');
    }
}
