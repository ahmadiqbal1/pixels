<?php

use Illuminate\Database\Seeder;

class DataTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('data_types')->delete();
        
        \DB::table('data_types')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'posts',
                'slug' => 'posts',
                'display_name_singular' => 'Post',
                'display_name_plural' => 'Posts',
                'icon' => 'voyager-news',
                'model_name' => 'TCG\\Voyager\\Models\\Post',
                'controller' => NULL,
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'pages',
                'slug' => 'pages',
                'display_name_singular' => 'Page',
                'display_name_plural' => 'Pages',
                'icon' => 'voyager-file-text',
                'model_name' => 'TCG\\Voyager\\Models\\Page',
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-03-19 13:41:36',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'users',
                'slug' => 'users',
                'display_name_singular' => 'User',
                'display_name_plural' => 'Users',
                'icon' => 'voyager-person',
                'model_name' => 'TCG\\Voyager\\Models\\User',
                'controller' => NULL,
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'categories',
                'slug' => 'categories',
                'display_name_singular' => 'Category',
                'display_name_plural' => 'Categories',
                'icon' => 'voyager-categories',
                'model_name' => 'TCG\\Voyager\\Models\\Category',
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-03-15 02:13:34',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'menus',
                'slug' => 'menus',
                'display_name_singular' => 'Menu',
                'display_name_plural' => 'Menus',
                'icon' => 'voyager-list',
                'model_name' => 'TCG\\Voyager\\Models\\Menu',
                'controller' => NULL,
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'roles',
                'slug' => 'roles',
                'display_name_singular' => 'Role',
                'display_name_plural' => 'Roles',
                'icon' => 'voyager-lock',
                'model_name' => 'TCG\\Voyager\\Models\\Role',
                'controller' => NULL,
                'description' => '',
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'tags',
                'slug' => 'tags',
                'display_name_singular' => 'Tag',
                'display_name_plural' => 'Tags',
                'icon' => 'voyager-tag',
                'model_name' => 'App\\Tag',
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 14:36:51',
                'updated_at' => '2017-02-10 14:36:51',
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'downloads',
                'slug' => 'downloads',
                'display_name_singular' => 'Download',
                'display_name_plural' => 'Downloads',
                'icon' => 'voyager-cloud-download',
                'model_name' => 'App\\Download',
                'controller' => NULL,
                'description' => NULL,
                'generate_permissions' => 1,
                'server_side' => 0,
                'created_at' => '2017-02-10 15:00:12',
                'updated_at' => '2017-02-10 15:00:12',
            ),
        ));
        
        
    }
}