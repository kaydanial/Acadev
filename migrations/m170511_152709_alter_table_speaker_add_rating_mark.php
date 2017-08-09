<?php

use yii\db\Migration;

class m170511_152709_alter_table_speaker_add_rating_mark extends Migration
{
    public function up()
    {
        $this->addColumn('speaker', 'rating_mark', $this->string());
    }

    public function down()
    {
        $this->dropColumn('speaker', 'rating_mark');
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
