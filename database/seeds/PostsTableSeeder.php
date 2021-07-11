<?php

use Illuminate\Database\Seeder;

class PostsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('posts')->delete();
        
        \DB::table('posts')->insert(array (
            0 => 
            array (
                'id' => 1,
                'author_id' => 1,
                'category_id' => NULL,
                'title' => 'Cool 8-bit Designs',
                'seo_title' => 'Cool 8-bit Designs',
                'excerpt' => 'Checkout these awesome 8-bit designs.',
                'body' => '<p>It\'s always fun looking at some retro 8-bit designs. Hopefully these designs will help inspire you to create the next greatest 8-bit designs. The 8-bit designs can take us back to a simpler time.</p>
<p>Checkout these awesome and cool looking 8-bit design inspirations.</p>
<p><img src="/storage/posts/March2017/IxbiLGyPT5Bg2tFmD6pQ.png" alt="" width="800" height="600" /></p>
<p><img src="/storage/posts/March2017/RqN7cspjD2XatKJfdZnw.jpg" alt="" width="800" height="600" /></p>
<p><img src="/storage/posts/March2017/HZB1oAvYOhpam4BZKDzT.png" alt="" width="800" height="600" /></p>
<p><img src="/storage/posts/March2017/B368lE6i3an5gUll74YITToso4kBLKHQZfGs4qBc.gif" alt="" width="924" height="350" /></p>
<p><img src="/storage/posts/March2017/bF76tV9AGZoqg7sPjQ6r.png" alt="" width="100%" height="auto" /></p>
<p>Hope you enjoyed this 8bit design roundup :)</p>',
            'image' => 'posts/March2017/bE9xDEocN7Le4DwbDkAD.jpg',
            'slug' => 'cool-8-bit-designs',
            'meta_description' => '8-bit designs',
            'meta_keywords' => '8-bit, 8bit designs',
            'status' => 'PUBLISHED',
            'featured' => 0,
            'created_at' => '2017-02-10 14:18:18',
            'updated_at' => '2017-03-24 16:12:10',
        ),
        1 => 
        array (
            'id' => 3,
            'author_id' => 1,
            'category_id' => NULL,
            'title' => 'Awesome Designs',
            'seo_title' => 'Awesome Designs',
            'excerpt' => 'This is a sample post to show you a bit of how pixel posts work.',
        'body' => '<p>This is just a sample post to show you some of the functionality of the pixel app. You can include any number of pictures and content in the post of your body. You can also include Gifs or videos :)</p>
<p><img src="http://media0.giphy.com/media/QIebXZSiWhgwE/200w.gif" /></p>',
        'image' => 'posts/March2017/2WdhTqq06yQa7kgDtprg.jpg',
        'slug' => 'awesome-designs',
        'meta_description' => 'This is the meta description for the post',
        'meta_keywords' => 'keyword1, keyword2, keyword3',
        'status' => 'PUBLISHED',
        'featured' => 0,
        'created_at' => '2017-02-10 14:18:18',
        'updated_at' => '2017-03-24 15:56:54',
    ),
    2 => 
    array (
        'id' => 6,
        'author_id' => 1,
        'category_id' => NULL,
        'title' => 'PSD Perspectives',
        'seo_title' => 'PSD Perspectives',
        'excerpt' => 'Checkout this awesome PSD perspective plugin.',
        'body' => '<p>Have you ever wanted to create those awesome perspective mockups. Well, luckily enough this can be accomplished really easy by using this Photoshop plugin. Check it out at:&nbsp;<a href="http://perspectivemockups.com/" target="_blank" rel="noopener noreferrer">http://perspectivemockups.com/</a></p>
<p>Using this mockup plugin you can easily select an action or a perspective you want to use and easily apply that to any design. This tool makes it easy to show your designs in a crisp and clean perspective.</p>
<p><img src="/storage/posts/March2017/RFSsLPxCEZEhn18nZOHm.jpg" width="1180" height="711" /></p>
<p>So make sure to head over to&nbsp;<a href="http://perspectivemockups.com/" target="_blank" rel="noopener noreferrer">http://perspectivemockups.com/</a>&nbsp;and show off your designs in a&nbsp;beautiful perspective layout.</p>',
        'image' => 'posts/March2017/P5S7q4ooGAY1HpHdCYUN.jpg',
        'slug' => 'psd-perspectives',
        'meta_description' => 'PSD Persepctives',
        'meta_keywords' => 'psd perspectives',
        'status' => 'PUBLISHED',
        'featured' => 0,
        'created_at' => '2017-03-24 13:16:18',
        'updated_at' => '2017-03-24 13:16:18',
    ),
    3 => 
    array (
        'id' => 7,
        'author_id' => 1,
        'category_id' => NULL,
        'title' => '5 Awesome Macbook pro Mockups',
        'seo_title' => 'Macbook Pro Mockups',
        'excerpt' => 'Checkout these awesome Macbook Pro Mockup Freebies',
        'body' => '<p>We\'ve got a round up of some awesome and FREE Macbook pro Mockups. Be sure to checkout each of these free downloads. You can download the mockup and put your design in the Macbook screen. Now you can display your beautiful designs in a beautiful Macbook Pro Mockup.</p>
<hr />
<h3>1. <a href="https://dribbble.com/shots/3225331-Elegant-Mockup-Freebie" target="_blank" rel="noopener noreferrer">Elegant Mockup Freebie</a></h3>
<p><a href="https://dribbble.com/shots/3225331-Elegant-Mockup-Freebie" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/eoENQXSLoVjYiQr9OVSQ.jpg" alt="" width="800" height="600" /></a></p>
<h3>2. <a href="https://dribbble.com/shots/1178502-Home-Page-WIP" target="_blank" rel="noopener noreferrer">Clean Homepage Mockup</a></h3>
<p><a href="https://dribbble.com/shots/1178502-Home-Page-WIP" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/YgebqnO52OGm03iub66W.png" alt="" width="800" height="600" /></a></p>
<h3>3. <a href="https://dribbble.com/shots/2747917-Free-mockup-MacBook-pro-Retina-on-wooden-table" target="_blank" rel="noopener noreferrer">Macbook Pro Retina on Wooden Table</a></h3>
<p><a href="https://dribbble.com/shots/2747917-Free-mockup-MacBook-pro-Retina-on-wooden-table" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/ZHfEcaYDKkcyW0k169cu.jpg" alt="" width="800" height="600" /></a></p>
<h3>4. <a href="https://dribbble.com/shots/3164657-Freebie-Macbook-On-Table-Mockup" target="_blank" rel="noopener noreferrer">Macbook on Table Mockup</a></h3>
<p><a href="https://dribbble.com/shots/3164657-Freebie-Macbook-On-Table-Mockup" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/mg6gUlabmiHgKtAeqzKv.jpg" alt="" width="800" height="600" /></a></p>
<h3>5. <a href="https://dribbble.com/shots/2520819-FREE-Macbook-Pro-Mock-Up" target="_blank" rel="noopener noreferrer">Macbook Pro Mockup Free</a></h3>
<p><a href="https://dribbble.com/shots/2520819-FREE-Macbook-Pro-Mock-Up" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/iuIzLVkuputlmcs66mp8.jpg" alt="" width="800" height="600" /></a></p>
<p>Hope you\'ve enjoyed this round up of Macbook Pro freebies.</p>',
        'image' => 'posts/March2017/iuTUtqGixCwaCGRJg6Wn.jpg',
        'slug' => '5-awesome-macbook-pro-mockups',
        'meta_description' => 'Macbook Pro Mockup Freebies',
        'meta_keywords' => 'Macbook Pro Mockup Freebies',
        'status' => 'PUBLISHED',
        'featured' => 0,
        'created_at' => '2017-03-24 13:24:12',
        'updated_at' => '2017-03-24 13:31:27',
    ),
    4 => 
    array (
        'id' => 8,
        'author_id' => 1,
        'category_id' => NULL,
        'title' => 'Flat Browser Mockups',
        'seo_title' => 'Flat Browser Mockup',
        'excerpt' => 'Checkout these awesome Flat Browser Mockups.',
        'body' => '<p>Here is a list of some flat browser mockups that you can use for your next project. Sometimes the cleanest designs need a nice flat browser presentation. Checkout these awesome Free mockups that you can use below:</p>
<h3>1. <a href="https://dribbble.com/shots/1516555-Flat-Browser-Mockup" target="_blank" rel="noopener noreferrer">Flat Browser Mockup</a></h3>
<p><a href="https://dribbble.com/shots/1516555-Flat-Browser-Mockup" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/VvFrmIDAEhbYfIjNmjqU.jpg" alt="" width="800" height="600" /></a></p>
<h3>2. <a href="https://dribbble.com/shots/2642270-Browser-Mockup" target="_blank" rel="noopener noreferrer">Browser Mockup</a></h3>
<p><a href="https://dribbble.com/shots/2642270-Browser-Mockup" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/trd4jYAVwLD6hqYcQSr5.png" alt="" width="800" height="600" /></a></p>
<h3>3. <a href="https://dribbble.com/shots/1718011-Freebie-Flat-Browser-Mockup" target="_blank" rel="noopener noreferrer">Freebie - Flat Browser Mockup</a></h3>
<p><a href="https://dribbble.com/shots/1718011-Freebie-Flat-Browser-Mockup" target="_blank" rel="noopener noreferrer"><img src="/storage/posts/March2017/l7B301v5J7POd4BMtqug.png" alt="" width="800" height="600" /></a></p>
<p>Hope you found this list useful :) Thanks.</p>',
    'image' => 'posts/March2017/l364YJt13wiDvxaatJEW.jpg',
    'slug' => 'flat-browser-mockups',
    'meta_description' => 'Flat Browser Mockup',
    'meta_keywords' => 'Flat Browser Mockup',
    'status' => 'PUBLISHED',
    'featured' => 0,
    'created_at' => '2017-03-24 15:51:01',
    'updated_at' => '2017-03-24 15:51:01',
),
));
        
        
    }
}