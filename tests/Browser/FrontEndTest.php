<?php

namespace Tests\Browser;

use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class FrontEndTest extends DuskTestCase
{
    /**
     * A basic browser test example.
     *
     * @return void
     */
    public function testBasicExample()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->pause(1000)
                    ->assertSee('Your Headline for your Site Here')
                    ->click('.navRight .navbar-nav li:nth-child(2) a')
                    ->assertPathIs('/category/mockups')
                    ->click('#downloads > .item_larger > .item a')
                    ->pause('2000');
        });
    }
}
