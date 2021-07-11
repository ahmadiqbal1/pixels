<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Download extends Model
{
    public static $validators = array(
        'title'   => 'required|min:3',
        'description'  => 'required|min:6');

	public function categories(){
	    return $this->belongsTo(Category::class);
	}

	public function category(){
	    return $this->belongsTo(Category::class);
	}

	public function category_id(){
	    return $this->belongsTo(Category::class);
	}

	public function categoryId(){
		return $this->belongsTo(Category::class);
	}

	public function tags(){
	    return $this->belongsToMany('App\Tag', 'download_tag');
	}

	public function tagsRelationship(){
	    return $this->belongsToMany('App\Tag', 'download_tag');
	}

	public function tags_relationship(){
	    return $this->belongsToMany('App\Tag', 'download_tag');
	}

	public function link(){
		$download_url_slug = (config('downloads_url_slug') !== null) ? config('downloads_url_slug') : 'download';
		return url($download_url_slug) . $this->slug;
	}
}
