<?php

use yii\db\Migration;

class m170425_114542_alter_table_event extends Migration
{
    public function up()
    {
        $this->addColumn('event', 'num_rate', $this->integer());
        $this->addColumn('event', 'num_view', $this->integer());
    }

    public function down()
    {
        $this->dropColumn('event', 'num_rate');
        $this->dropColumn('event', 'num_view');
    }
}
