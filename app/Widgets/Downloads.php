<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use TCG\Voyager\Facades\Voyager;

class Downloads extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Download::count();
        $string = $count == 1 ? 'download' : 'Downloads';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-download',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} {$string} in your database. Click on button below to view all downloads.",
            'button' => [
                'text' => 'View all Downloads',
                'link' => route('voyager.downloads.index'),
            ],
            'image' => url('/storage/downloads-bg.jpg'),
        ]));
    }
}
