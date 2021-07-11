<?php

namespace App\Http\Middleware;

use Closure;
use Voyager;
use Config;
use TCG\Voyager\Models\Setting;
use Illuminate\Support\Facades\Schema;
use Arrilot\Widgets\Facade as Widget;

class Themes
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
            if($request->is('admin/settings') && $request->isMethod('get')){
                $themes = Setting::where('key', '=', 'theme')->first();
                if(isset($themes->id)){
                    $themes->details = json_encode($this->get_themes());
                    $themes->save();
                }
            }

            if(setting('theme')){
                Config::set('theme', setting('theme'));
            } else {
                Config::set('theme', 'default');
            }

            if(setting('demo_mode', 0)){
                if(isset($request->theme) && !$request->is('admin/settings')){

                    $theme = (strpos($request->theme, '_dark') !== false) ? str_replace('_dark', '', $request->theme) : $request->theme;

                    Config::set('theme', $theme);
                    return redirect('/')->withCookie('theme', $request->theme);
                }

                if($request->cookie('theme')){
                    $theme = (strpos($request->cookie('theme'), '_dark') !== false) ? str_replace('_dark', '', $request->cookie('theme')) : $request->cookie('theme');
                    Config::set('theme', $theme);
                }

            }
        }

        return $next($request);
            
    }

    private function get_themes(){
        $themes = array();
        $theme_folder = resource_path('/views/themes');
        
        $scandirectory = scandir($theme_folder);

        if($scandirectory !== false){
        
            foreach($scandirectory as $folder){
                if(file_exists($theme_folder . '/' . $folder . '/index.blade.php')){
                    $themes[$folder] = $folder;
                }
            }
            
            $options['options'] = $themes;

        } else {
            $options['options'] = ['default' => 'default', 'white' => 'white'];
        }
        
        return (object)$options;
    }
}
