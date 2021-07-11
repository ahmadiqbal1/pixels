<?php

use Illuminate\Database\Seeder;

class PagesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('pages')->delete();
        
        \DB::table('pages')->insert(array (
            0 => 
            array (
                'id' => 2,
                'author_id' => 1,
                'title' => 'Contact',
                'excerpt' => 'Learn how to get ahold of us in the contact page.',
                'body' => '<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">Thanks for visiting the contact page. We love hearing from our users and we love to help out in any way that we can. If you have any general questions about your account or even issues that you may have with the site please contact us below:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;"><a style="box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;" href="mailto:email@email.com">email@email.com</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">On the other hand if you would like to contact us with a suggested product that you think would be amazing on our site, please contact us by sending an email to:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;"><a style="box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;" href="mailto:suggestions@email.com">suggestions@email.com</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">If you have any legal matter that you would like to contact us about, please send an email to:</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;"><a style="box-sizing: border-box; background-color: transparent; color: #337ab7; text-decoration-line: none;" href="mailto:legal@email.com">legal@email.com</a></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">&nbsp;</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">Thanks again and we look forward to hearing from you.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Helvetica, Arial, Courier; color: #333333;">- The Team</p>',
                'image' => NULL,
                'slug' => 'contact',
                'meta_description' => 'Contact Us',
                'meta_keywords' => 'contact, contact us page',
                'status' => 'ACTIVE',
                'created_at' => '2017-03-19 13:40:44',
                'updated_at' => '2017-03-19 13:40:44',
            ),
            1 => 
            array (
                'id' => 3,
                'author_id' => 1,
                'title' => 'About',
                'excerpt' => NULL,
                'body' => '<p>Pixel Premium Download script is a script that you can install on your server and offer downloads including PSD\'s, Vector Files, Illustrator Files, Sketch Files, Icons, and any other kind of download content. You can even use Pixel as a wallpaper site or any other download site you can think of.</p>
<p><img src="/storage/settings/March2017/pg8F0yPyOFqAsimH60eTa5fWYibCLv165R4ywZBW.jpeg" alt="" width="1500" height="1213" /></p>',
                'image' => NULL,
                'slug' => 'about',
                'meta_description' => 'About Us',
                'meta_keywords' => 'about',
                'status' => 'ACTIVE',
                'created_at' => '2017-03-19 13:55:25',
                'updated_at' => '2017-03-19 13:55:25',
            ),
        ));
        
        
    }
}