<?php

use yii\db\Migration;

class m170223_145259_alter_table_profile extends Migration
{
    public function up()
    {
        $this->addColumn('profile', 'image_id', $this->integer());
    }

    public function down()
    {
        $this->dropColumn('profile', 'image_id');
    }
}
