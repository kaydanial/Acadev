<?php

use yii\db\Migration;

class m170427_153359_alter_table_event extends Migration
{
    public function up()
    {
        $this->addColumn('event', 'speaker_id', $this->integer());

        $this->addForeignKey('fk_event_speaker_id', 'event', 'speaker_id', 'speaker', 'id', 'SET NULL');

    }

    public function down()
    {
        $this->dropForeignKey('fk_event_speaker_id', 'event');
        $this->dropColumn('event', 'speaker_id');
    }
}
