<?php

use yii\db\Migration;

class m170426_125236_create_event_join extends Migration
{
    public function up()
    {
        $this->createTable('event_join', [
            'id' => $this->primaryKey(),
            'event_id' => $this->integer(),
            'user_id' => $this->integer(),
            'join_at' => $this->dateTime(),
            'is_cancel' => $this->boolean()->defaultValue(0),
        ]);

        $this->addForeignKey('fk_event_join_event_id', 'event_join', 'event_id', 'event', 'id', 'CASCADE', 'CASCADE');
        $this->addForeignKey('fk_event_join_user_id', 'event_join', 'user_id', 'user', 'id', 'CASCADE', 'CASCADE');
    }

    public function down()
    {
        $this->dropForeignKey('fk_event_join_event_id', 'event_join');
        $this->dropForeignKey('fk_event_join_user_id', 'event_join');
        $this->dropTable('event_join');
    }
}
