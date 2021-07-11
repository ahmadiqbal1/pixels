<?php

namespace App\Http\Controllers;

use App\Download;
use App\Category;
use App\Tag;
use App\Post;
use App\Page;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Cookie\CookieJar;
use Symfony\Component\HttpFoundation\Cookie;


class HomeController extends Controller {


	public function home(Request $request){

        $downloads = Download::orderBy('created_at', 'DESC')->paginate(12);
        $headline = setting('homepage_headline');
        $subheadline = setting('homepage_subheadline');

        $seo = (object)array(
                    'meta_description' => setting('description'),
                    'meta_keywords' => setting('seo_keywords'),
                    'twitter_description' => setting('description'),
                    'og_title' => setting('title'),
                    'og_image' => setting('og_image'),
                    'og_image_width' => setting('og_image_width'),
                    'og_image_height' => setting('og_image_height'),
                    'canonical_url' => url('/')
                );
        
        if($request->ajax()){
            return view('themes.' . config('theme') . '.partials.downloads', compact('downloads'));
        } else {
            return view('themes.' . config('theme') . '.index', compact('downloads', 'headline', 'subheadline', 'seo'));
        }
        
    }

    public function category(Request $request, $slug){
        
        $category = Category::where('slug', '=', $slug)->first();
        $downloads = Download::where('category_id', '=', $category->id)->orderBy('created_at', 'DESC')->paginate(12);
        $headline = $category->name;

        if($request->ajax()){
            return view('themes.' . config('theme') . '.partials.downloads', compact('downloads'));
        } else {
            return view('themes.' . config('theme') . '.index', compact('downloads', 'headline', 'subheadline', 'seo'));
        }
        
    }

    public function tags(Request $request, $tag){

        $tag = Tag::where('slug', '=', $tag)->first();
        $downloads = $tag->downloads()->paginate(12);
        $headline = '<i class="fa fa-tag"></i> Tagged with "' . ucfirst($tag->name) . '"';

        if($request->ajax()){
            return view('themes.' . config('theme') . '.partials.downloads', compact('downloads'));
        } else {
            return view('themes.' . config('theme') . '.index', compact('downloads', 'headline', 'subheadline', 'seo'));
        }
    }

	public function search(Request $request){

		$downloads = Download::where('title', 'LIKE', '%'.$request->search.'%')->paginate(12);
        $headline = '<i class="fa fa-search"></i> Search Results for ' . $request->search;

        if($request->ajax()){
            return view('themes.' . config('theme') . '.partials.downloads', compact('downloads'));
        } else {
            return view('themes.' . config('theme') . '.index', compact('downloads', 'headline', 'subheadline', 'seo'));
        }

	}

	public function rss(){

		$downloads = Download::orderBy('created_at', 'DESC')->take(100)->get();
		return response()->view('themes.' . config('theme') . '.rss', compact('downloads'))->header('Content-Type', 'application/xml');

	}

	public function popular(Request $request){

		$downloads = Download::orderBy('downloads', 'DESC')->orderBy('time_download','DESC')->paginate(12);
        $headline = '<i class="fa fa-star"></i> Most Popular';

        if($request->ajax()){
            return view('themes.' . config('theme') . '.partials.downloads', compact('downloads'));
        } else {
            return view('themes.' . config('theme') . '.index', compact('downloads', 'headline', 'subheadline', 'seo'));
        }

	}

    public function sitemap(){
        $downloads = Download::all();
        $categories = Category::all();
        $tags = Tag::all();
        $posts = Post::all();
        $pages = Page::all();

        $download_url_slug = (config('downloads_url_slug') !== null) ? config('downloads_url_slug') : 'download';

        return response()->view('shared.sitemap', compact('downloads', 'categories', 'tags', 'posts', 'pages', 'download_url_slug'))->header('Content-Type', 'application/xml');
    }
}