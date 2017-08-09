<?php

use yii\db\Migration;

/**
 * Handles the creation of table `speaker_rating`.
 */
class m170511_150455_create_speaker_rating_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('speaker_rating', [
            'id' => $this->primaryKey(),
            'speaker_id' => $this->integer(),
            'rate_id' => $this->integer(),
            'unique_id' => $this->string(),
            'is_active' => $this->boolean()->defaultValue(1),
            'timestamp' => $this->timestamp(),
        ]);

        $this->addForeignKey('speaker_rating_fk1', 'speaker_rating', 'speaker_id', 'speaker', 'id','SET NULL', 'SET NULL');
        $this->addForeignKey('speaker_rating_fk2', 'speaker_rating', 'rate_id', 'rate_mark', 'id', 'SET NULL', 'SET NULL');
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->addForeignKey('speaker_rating_fk1', 'speaker_rating');
        $this->addForeignKey('speaker_rating_fk2', 'speaker_rating');
        $this->dropTable('speaker_rating');
    }
}
