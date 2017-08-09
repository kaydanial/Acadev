<?php

use yii\db\Migration;

class m170426_053313_alter_table_event_rating extends Migration
{
    public function up()
    {
        $this->addColumn('event_rating', 'ip_address', $this->string(50));
    }

    public function down()
    {
        $this->dropColumn('event_rating', 'ip_address');
    }
}
