<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //
    public function link(){
    	return '/blog/' . $this->slug;
    }
}
