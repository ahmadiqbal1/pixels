<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categories')->delete();
        
        \DB::table('categories')->insert(array (
            0 => 
            array (
                'id' => 1,
                'parent_id' => NULL,
                'order' => 1,
                'name' => 'Mockups',
                'slug' => 'mockups',
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-03-15 01:59:01',
            ),
            1 => 
            array (
                'id' => 2,
                'parent_id' => NULL,
                'order' => 2,
                'name' => 'PSDs',
                'slug' => 'psds',
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-03-15 01:59:30',
            ),
            2 => 
            array (
                'id' => 3,
                'parent_id' => NULL,
                'order' => 3,
                'name' => 'Icons',
                'slug' => 'icons',
                'created_at' => '2017-03-15 01:59:59',
                'updated_at' => '2017-03-15 02:00:04',
            ),
            3 => 
            array (
                'id' => 4,
                'parent_id' => NULL,
                'order' => 4,
                'name' => 'Vectors',
                'slug' => 'vectors',
                'created_at' => '2017-03-15 02:00:42',
                'updated_at' => '2017-03-15 02:00:46',
            ),
            4 => 
            array (
                'id' => 5,
                'parent_id' => 4,
                'order' => 6,
                'name' => 'Sketch',
                'slug' => 'sketch',
                'created_at' => '2017-03-15 02:00:56',
                'updated_at' => '2017-03-15 02:13:09',
            ),
            5 => 
            array (
                'id' => 6,
                'parent_id' => NULL,
                'order' => 7,
                'name' => 'Other',
                'slug' => 'other',
                'created_at' => '2017-03-15 02:01:11',
                'updated_at' => '2017-03-15 02:10:44',
            ),
            6 => 
            array (
                'id' => 7,
                'parent_id' => 2,
                'order' => 8,
                'name' => 'UI Kits',
                'slug' => 'ui-kits',
                'created_at' => '2017-03-15 02:01:50',
                'updated_at' => '2017-03-15 02:14:19',
            ),
            7 => 
            array (
                'id' => 8,
                'parent_id' => 2,
                'order' => 9,
                'name' => 'Websites',
                'slug' => 'websites',
                'created_at' => '2017-03-15 02:02:06',
                'updated_at' => '2017-03-15 02:14:31',
            ),
            8 => 
            array (
                'id' => 9,
                'parent_id' => 4,
                'order' => 5,
                'name' => 'Illustrator',
                'slug' => 'illustrator',
                'created_at' => '2017-03-15 02:11:33',
                'updated_at' => '2017-03-15 02:14:01',
            ),
        ));
        
        
    }
}