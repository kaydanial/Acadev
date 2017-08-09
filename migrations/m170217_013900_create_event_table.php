<?php

use yii\db\Migration;

/**
 * Handles the creation of table `event`.
 */
class m170217_013900_create_event_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('event', [
            'id' => $this->primaryKey(),
            'user_id' => $this->integer(),
            'category_id' => $this->integer(),
            'sub_category_id' => $this->integer(),
            'event_type_id' => $this->integer(),
            'title' => $this->string(),
            'description' => $this->text(),
            'register_date' => $this->date(),
            'register_end_date' => $this->date(),
            'past_event' => $this->string(),
            'city' => $this->string(),
            'state' => $this->string(),
            'organization' => $this->string(),
            'institution' => $this->string(),
            'fees' => $this->text(),
            'link' => $this->string(),
            'start_date' => $this->date(),
            'end_date' => $this->date(),
            'venue' => $this->string(),
            'tags' => $this->string(),
            'status' => $this->boolean()->defaultValue(1),
            'created_at' => $this->dateTime(),
            'created_by' => $this->string(),
            'updated_at' => $this->timestamp(),
            'updated_by' => $this->string(),
        ]);

        $this->addForeignKey('fk_event_1', 'event', 'category_id', 'category', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_event_2', 'event', 'sub_category_id', 'sub_category', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_event_3', 'event', 'event_type_id', 'event_type', 'id', 'SET NULL', 'CASCADE');
        $this->addForeignKey('fk_event_4', 'event', 'user_id', 'user', 'id', 'SET NULL', 'CASCADE');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropForeignKey('fk_event_1', 'event');
        $this->dropForeignKey('fk_event_2', 'event');
        $this->dropForeignKey('fk_event_3', 'event');
        $this->dropForeignKey('fk_event_4', 'event');
        $this->dropTable('event');
    }
}
