const elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

var theme = 'material';

var scripts = [];
scripts['material'] = ['jquery-2.1.0.min.js', 'bootstrap.min.js', 'iscroll.js', 'snap.svg-min.js', 'material.min.js', 'material-kit.js', 'app.js'];
scripts['default'] = ['jquery-2.1.0.min.js', 'bootstrap.min.js', 'iscroll.js', 'snap.svg-min.js', 'app.js'];


elixir.config.assetsDir = "resources/views/themes/" + theme + "/assets/";
elixir.config.registerWatcher("default", "resources/views/themes/" + theme + "/assets/**");

elixir(function(mix) {
   mix.less([ 'style.less'], 'resources/views/themes/' + theme + '/assets/css/style.css');
   mix.stylesIn('', './public/assets/' + theme + '/css/style.css');
   mix.scripts(scripts[theme], 'public/assets/' + theme + '/js/app.js');
   mix.copy(
            'other',
            'public/assets/' + theme
        );
});