<?php

use yii\db\Migration;

class m170424_124047_add_new_roles extends Migration
{
    public function up()
    {
        $this->insert('auth_item' ,array('name'=>'participant', 'type' => 1, 'description' => 'Public user, can view event and join event'));

        $this->insert('auth_item', ['name'=>'organizer', 'type' => 1, 'description' => 'Manage event']);
    }

    public function down()
    {
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
