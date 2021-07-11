<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;
use Voyager;

class PageController extends Controller
{

    /**
     * Show the page.
     *
     */
    public function read($slug)
    {
        $page = Page::where('slug', '=', $slug)->first();
        $headline = $page->title;

        $seo = (object)array(
    		'title' => $page->title,
    		'meta_description' => $page->title . ' Page'
    	);

        return view('themes.' . config('theme') . '.page.read', compact('page', 'headline', 'seo'));
    }

}
