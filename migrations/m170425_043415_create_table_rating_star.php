<?php

use yii\db\Migration;

class m170425_043415_create_table_rating_star extends Migration
{
    public function up()
    {
        $this->createTable('rate_mark', [
            'id' => $this->primaryKey(),
            'mark' => $this->decimal(11,2),
        ]);

        $this->insert('rate_mark', ['mark' => 0.02]);
        $this->insert('rate_mark', ['mark' => 0.04]);
        $this->insert('rate_mark', ['mark' => 0.06]);
        $this->insert('rate_mark', ['mark' => 0.08]);
        $this->insert('rate_mark', ['mark' => 1]);

        $this->createTable('event_rating', [
            'id' => $this->primaryKey(),
            'event_id' => $this->integer()->notNull(),
            'rate_id' => $this->integer(),
            'user_id' => $this->integer(),
        ]);

        $this->addForeignKey('fk_event_rating_event_id', 'event_rating', 'event_id', 'event', 'id', 'CASCADE', 'CASCADE');
        $this->addForeignKey('fk_event_rating_user_id', 'event_rating', 'user_id', 'user', 'id', 'SET NULL', 'SET NULL');
        $this->addForeignKey('fk_event_rating_rate_id', 'event_rating', 'rate_id', 'rate_mark', 'id', 'CASCADE', 'CASCADE');

        // alter table event
        $this->addColumn('event', 'rating_mark', $this->string());
    }

    public function down()
    {
        $this->dropTable('event_rating');
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
