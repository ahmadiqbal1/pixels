<?php

namespace App\Http\Middleware;

use Closure;
use Config;
use Illuminate\Support\Facades\Schema;

class Pixel
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Make sure that we have access to the database
        if(Schema::hasTable('settings')){
            // And set the application name
            Config::set('app.name', setting('title'));
        }
        
        return $next($request);
    }
}
