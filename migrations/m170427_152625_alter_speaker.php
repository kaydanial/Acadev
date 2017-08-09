<?php

use yii\db\Migration;

class m170427_152625_alter_speaker extends Migration
{
    public function up()
    {
        $this->addColumn('speaker', 'email', $this->string());
    }

    public function down()
    {
        $this->dropColumn('speaker', 'email');
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
