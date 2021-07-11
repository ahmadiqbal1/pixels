<?php

use Illuminate\Database\Seeder;

class MenusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menus')->delete();
        
        \DB::table('menus')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'admin',
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'main',
                'created_at' => '2017-03-16 16:13:46',
                'updated_at' => '2017-03-16 16:13:46',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'top_bar',
                'created_at' => '2017-03-22 23:34:05',
                'updated_at' => '2017-03-22 23:34:05',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'footer_menu',
                'created_at' => '2017-03-22 23:56:50',
                'updated_at' => '2017-03-22 23:56:50',
            ),
        ));
        
        
    }
}