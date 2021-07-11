<?php

use Illuminate\Database\Seeder;

class TagsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('tags')->delete();
        
        \DB::table('tags')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'hero image',
                'slug' => 'hero-image',
                'created_at' => '2017-03-14 16:47:13',
                'updated_at' => '2017-03-14 16:50:47',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'mock-up',
                'slug' => 'mock-up',
                'created_at' => '2017-03-14 16:51:12',
                'updated_at' => '2017-03-14 16:51:12',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'photo',
                'slug' => 'photo',
                'created_at' => '2017-03-14 16:51:26',
                'updated_at' => '2017-03-14 16:51:26',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'psd',
                'slug' => 'psd',
                'created_at' => '2017-03-14 16:51:52',
                'updated_at' => '2017-03-14 16:51:52',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'ui kit',
                'slug' => 'ui-kit',
                'created_at' => '2017-03-14 16:52:42',
                'updated_at' => '2017-03-14 16:52:42',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'interface',
                'slug' => 'interface',
                'created_at' => '2017-03-14 16:52:58',
                'updated_at' => '2017-03-14 16:52:58',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'freebie',
                'slug' => 'freebie',
                'created_at' => '2017-03-14 16:53:14',
                'updated_at' => '2017-03-14 16:53:14',
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'ui',
                'slug' => 'ui',
                'created_at' => '2017-03-14 16:53:30',
                'updated_at' => '2017-03-14 16:53:30',
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'stream',
                'slug' => 'stream',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'flat',
                'slug' => 'flat',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'web',
                'slug' => 'web',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'mobile',
                'slug' => 'mobile',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'profile',
                'slug' => 'profile',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'free',
                'slug' => 'free',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'macbook',
                'slug' => 'macbook',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'work',
                'slug' => 'work',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'clean',
                'slug' => 'clean',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'minimal',
                'slug' => 'minimal',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            18 => 
            array (
                'id' => 19,
                'name' => 'freelancer',
                'slug' => 'freelancer',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            19 => 
            array (
                'id' => 20,
                'name' => 'ux',
                'slug' => 'ux',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            20 => 
            array (
                'id' => 21,
                'name' => 'e-commerce',
                'slug' => 'e-commerce',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            21 => 
            array (
                'id' => 22,
                'name' => 'shop',
                'slug' => 'shop',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            22 => 
            array (
                'id' => 23,
                'name' => 'webdesign',
                'slug' => 'webdesign',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            23 => 
            array (
                'id' => 24,
                'name' => 'design',
                'slug' => 'design',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            24 => 
            array (
                'id' => 25,
                'name' => 'website',
                'slug' => 'website',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            25 => 
            array (
                'id' => 26,
                'name' => 'bootstrap',
                'slug' => 'bootstrap',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            26 => 
            array (
                'id' => 27,
                'name' => 'download',
                'slug' => 'download',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            27 => 
            array (
                'id' => 28,
                'name' => 'template',
                'slug' => 'template',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            28 => 
            array (
                'id' => 29,
                'name' => 'game',
                'slug' => 'game',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            29 => 
            array (
                'id' => 30,
                'name' => 'events',
                'slug' => 'events',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            30 => 
            array (
                'id' => 31,
                'name' => 'activities',
                'slug' => 'activities',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            31 => 
            array (
                'id' => 32,
                'name' => 'macbook air',
                'slug' => 'macbook-air',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            32 => 
            array (
                'id' => 33,
                'name' => 'fire',
                'slug' => 'fire',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            33 => 
            array (
                'id' => 34,
                'name' => 'masonry',
                'slug' => 'masonry',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            34 => 
            array (
                'id' => 35,
                'name' => 'dashboard',
                'slug' => 'dashboard',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            35 => 
            array (
                'id' => 36,
                'name' => 'app design',
                'slug' => 'app-design',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            36 => 
            array (
                'id' => 37,
                'name' => 'imac',
                'slug' => 'imac',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            37 => 
            array (
                'id' => 38,
                'name' => 'photoshop',
                'slug' => 'photoshop',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            38 => 
            array (
                'id' => 39,
                'name' => 'desktop',
                'slug' => 'desktop',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            39 => 
            array (
                'id' => 40,
                'name' => 'icons',
                'slug' => 'icons',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            40 => 
            array (
                'id' => 41,
                'name' => 'icon set',
                'slug' => 'icon-set',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            41 => 
            array (
                'id' => 43,
                'name' => 'ios',
                'slug' => 'ios',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            42 => 
            array (
                'id' => 44,
                'name' => 'vector',
                'slug' => 'vector',
                'created_at' => '2017-03-14 16:53:50',
                'updated_at' => '2017-03-14 16:53:50',
            ),
            43 => 
            array (
                'id' => 45,
                'name' => 'logo',
                'slug' => 'logo',
                'created_at' => '2017-03-15 01:50:15',
                'updated_at' => '2017-03-15 01:50:15',
            ),
            44 => 
            array (
                'id' => 46,
                'name' => 'vintage',
                'slug' => 'vintage',
                'created_at' => '2017-03-15 01:50:24',
                'updated_at' => '2017-03-15 01:50:24',
            ),
        ));
        
        
    }
}