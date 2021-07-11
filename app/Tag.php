<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    public function downloads(){
	    return $this->belongsToMany(Download::class, 'download_tag');
	}
}
