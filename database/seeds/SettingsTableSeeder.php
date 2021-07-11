<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings')->delete();
        
        \DB::table('settings')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'title',
                'display_name' => 'Site Title',
                'value' => 'Pixel',
                'details' => '',
                'type' => 'text',
                'order' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'description',
                'display_name' => 'Site Description',
                'value' => 'Premium Download Script',
                'details' => '',
                'type' => 'text',
                'order' => 2,
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'logo',
                'display_name' => 'Site Logo',
                'value' => '',
                'details' => '',
                'type' => 'image',
                'order' => 3,
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'admin_bg_image',
                'display_name' => 'Admin Background Image',
                'value' => 'settings/March2017/N0NkFcptuoTD6BtnEfUT.jpg',
                'details' => '',
                'type' => 'image',
                'order' => 9,
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'admin_title',
                'display_name' => 'Admin Title',
                'value' => 'Pixel',
                'details' => '',
                'type' => 'text',
                'order' => 4,
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'admin_description',
                'display_name' => 'Admin Description',
                'value' => 'Premium Download Script',
                'details' => '',
                'type' => 'text',
                'order' => 5,
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'admin_loader',
                'display_name' => 'Admin Loader',
                'value' => 'settings/March2017/9WEZgxLhvw8PYFuqWE2i.png',
                'details' => '',
                'type' => 'image',
                'order' => 6,
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'admin_icon_image',
                'display_name' => 'Admin Icon Image',
                'value' => 'settings/March2017/FXNpBnDqMWPltKiRatTn.png',
                'details' => '',
                'type' => 'image',
                'order' => 7,
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'google_analytics_client_id',
                'display_name' => 'Google Analytics Client ID',
                'value' => '',
                'details' => '',
                'type' => 'text',
                'order' => 9,
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'homepage_headline',
                'display_name' => 'Homepage Headline',
                'value' => 'Your Headline for your Site Here',
                'details' => '{}',
                'type' => 'text',
                'order' => 10,
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'homepage_subheadline',
                'display_name' => 'Homepage Subheadline',
                'value' => 'And your sub-headline will go right here. Perhaps a short slogan',
                'details' => '{}',
                'type' => 'text',
                'order' => 11,
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'disqus',
            'display_name' => 'Disqus Comments Website Name (ex. website.disqus.com)',
                'value' => 'pixel2',
                'details' => '{}',
                'type' => 'text',
                'order' => 12,
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'download_wait',
            'display_name' => 'How long should the user wait before the download begins (in seconds)',
                'value' => '5',
                'details' => '{}',
                'type' => 'text',
                'order' => 13,
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'seo_keywords',
            'display_name' => 'SEO keywords for your site (comma separated)',
                'value' => 'downloads, psd, vectors, mockups, icons, ui kits, web design, design files, logos, graphics, file downloads',
                'details' => '{}',
                'type' => 'text',
                'order' => 14,
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'twitter',
                'display_name' => 'Twitter Username',
                'value' => 'thedevdojo',
                'details' => '{}',
                'type' => 'text',
                'order' => 24,
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'og_image',
            'display_name' => 'Social Share Image (this will be the image that will be shown when users share your homepage)',
                'value' => '',
                'details' => '{}',
                'type' => 'image',
                'order' => 15,
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'og_image_width',
            'display_name' => 'Social Share Image Width (in pixels)',
                'value' => '',
                'details' => '{}',
                'type' => 'text',
                'order' => 16,
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'og_image_height',
            'display_name' => 'Social Share Image Height (in pixels)',
                'value' => '',
                'details' => '{}',
                'type' => 'text',
                'order' => 17,
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'demo_mode',
                'display_name' => 'Demo Mode',
                'value' => '0',
                'details' => '{}',
                'type' => 'checkbox',
                'order' => 18,
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'theme',
                'display_name' => 'Theme',
                'value' => 'default',
                'details' => '{"options":{"default":"default","material":"material"}}',
                'type' => 'select_dropdown',
                'order' => 19,
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'favicon',
                'display_name' => 'Favicon',
                'value' => 'settings/March2017/DeIfKXcuemggFu6hOOSR.png',
                'details' => '{}',
                'type' => 'image',
                'order' => 22,
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'material_header_bg',
            'display_name' => 'Theme Material (Header Image Background)',
                'value' => 'settings/March2017/FXdmZjgPe6tQfmpkfTYK.jpg',
                'details' => '{}',
                'type' => 'image',
                'order' => 21,
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'facebook',
            'display_name' => 'Facebook page (don\'t include https://www.facebook.com/, just the name)',
                'value' => 'thedevdojo',
                'details' => '{}',
                'type' => 'text',
                'order' => 23,
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'googleplus',
            'display_name' => 'Google Plus Page (example \'+devdojo\')',
                'value' => '+devdojo',
                'details' => '{}',
                'type' => 'text',
                'order' => 25,
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'color_scheme',
                'display_name' => 'Color Scheme',
                'value' => 'dark',
                'details' => '{
                    "default": "light",
                        "options": {
                            "light": "Light",
                            "dark": "Dark"
                        }
                    }',
                'type' => 'select_dropdown',
                'order' => 20,
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'ads300x250',
                'display_name' => 'Rectangle Ad',
                'value' => '',
                'details' => '{}',
                'type' => 'text_area',
                'order' => 21,
            ),
            array (
                'id' => 27,
                'key' => 'ads728x90',
                'display_name' => 'Top Banner Ad',
                'value' => '',
                'details' => '{}',
                'type' => 'text_area',
                'order' => 22,
            ),
        ));
        
        
    }
}