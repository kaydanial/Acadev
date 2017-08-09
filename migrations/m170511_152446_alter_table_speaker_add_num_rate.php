<?php

use yii\db\Migration;

class m170511_152446_alter_table_speaker_add_num_rate extends Migration
{
    public function up()
    {
        $this->addColumn('speaker', 'num_rate', $this->integer());
    }

    public function down()
    {
        $this->dropColumn('speaker', 'num_rate');
    }
}
