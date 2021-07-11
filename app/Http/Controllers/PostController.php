<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Download;
use Voyager;

class PostController extends Controller
{
    public function browse(){
    	$posts = Post::where('status', '=', 'PUBLISHED')->orderBy('created_at', 'DESC')->paginate(10);
    	$downloads = Download::orderBy('created_at', 'DESC')->where('active', '=', 1)->take(5)->get();

        $seo = (object)array(
            'title' => setting('title') . ' Blog',
            'meta_description' => setting('title') . ' Blog'
        );

        $headline = 'Welcome to the ' . setting('title') . ' Blog';
        
    	return view('themes.' . config('theme') . '.posts.browse', compact('posts', 'headline', 'downloads', 'seo'));
    }

    public function read($slug){
    	$post = Post::where('slug', '=', $slug)->firstOrFail();
    	$random_posts = Post::where('id', '<>', $post->id)->take(4)->get();

        $headline = $post->title;

        $seo = (object)array(
            'title' => $post->title,
            'meta_description' => $post->meta_description,
            'meta_keywords' => $post->meta_keywords,
            'twitter_description' => $post->meta_description,
            'og_title' => $post->title,
            'og_image' => Voyager::image( $post->image ),
        );

    	return view('themes.' . config('theme') . '.posts.read', compact('post', 'random_posts', 'seo_title', 'meta_description', 'meta_keywords', 'twitter_description', 'og_title', 'og_image', 'headline', 'seo'));
    }
}
