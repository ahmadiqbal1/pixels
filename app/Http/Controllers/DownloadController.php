<?php

namespace App\Http\Controllers;

use App\Download;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Facades\TCG\Voyager\Voyager;

class DownloadController extends Controller {

	public function index(Request $request, $slug){

		$download = Download::where('slug', '=', $slug)->firstOrFail();
		$popular  = Download::orderBy('downloads', 'DESC')->take(5)->get();
		$mostlike = Download::orderBy('likes', 'DESC')->take(5)->get();
		$alsolike = Download::orderByRaw("RAND()")->where('slug', '!=', $slug)->take(3)->get();
		$previous = Download::where('created_at', '>', $download->created_at)->orderBy('created_at', 'ASC')->first();
		$next     = Download::where('created_at', '<', $download->created_at)->orderBy('created_at', 'DESC')->first();

		$modal = (isset($request->modal)) ? '?modal=true' : '';
		$headline = $download->title;

		$tags = '';

		foreach($download->tags as $tag):
			$tags .= $tag->name . ', ';
		endforeach;

		$seo = (object)array(
			'title' => $download->title,
            'meta_description' => 'Download ' . $download->title,
            'meta_keywords' => $tags,
            'twitter_description' => 'Download ' . $download->title,
            'og_title' => $download->title,
            'og_image' => Voyager::image( $download->image ),
        );

		return view('themes.' . config('theme') . '.download.read', compact('download', 'popular', 'mostlike', 'alsolike', 'previous', 'next', 'imgshare', 'modal', 'headline', 'seo'));
	}

	public function download_count($slug){
		
		$imgdownload = Download::where('slug', '=', $slug)->firstOrFail();
		$imgdownload->downloads = $imgdownload->downloads + 1;
		$imgdownload->time_download = date('Y-m-d H:i:s');
		$imgdownload->save();
		echo $imgdownload->downloads;

	}

	public function download_file($slug){

		$download = Download::where('slug', '=', $slug)->firstOrFail();
		return redirect($download->file);
		
	}

	public function download_page($slug){
		
		$download  = Download::where('slug', '=', $slug)->firstOrFail();
		$downloads = Download::where('slug', '!=', $slug)->take(12)->orderBy('created_at', 'DESC')->get();
		$headline = 'Thanks for your Download';

		$seo = (object)array(
			'title' => 'Download ' . $download->title,
            'meta_description' => 'Download Page for ' . $download->title,
            'meta_keywords' => $download->title . ', downloads',
        );

		return view('themes.' . config('theme') . '.download.download_page', compact('download', 'downloads', 'headline', 'seo'));
	
	}
	
	public function download_like(Request $request){
		
		if($request->slug){
			$slug = $request->slug;
			$download = Download::where('slug', '=', $request->slug)->firstOrFail();

			if ($request->session()->has('like')) {
				$arrLikes = $request->session()->get('like');
				if (in_array($slug,$arrLikes)) {
					$download->likes = $download->likes - 1;
					$arrLikes = array_diff($arrLikes, [$slug]);
					$request->session()->forget('like');
					$request->session()->put('like', $arrLikes);
				} else {
					$download->likes = $download->likes + 1;
					array_push($arrLikes,$slug);
					$request->session()->forget('like');
					$request->session()->put('like', $arrLikes);
				}
			} else {
				$download->likes = $download->likes + 1;
				$arrLikes = [$slug];		
				$request->session()->forget('like');
				$request->session()->put('like', $arrLikes);
			}
			$download->save();
			echo $download->likes;
		}

	}
}