@extends('themes.default.layouts.app')

@section('content')

<div id="page" class="container">
	@if(isset($headline))
        <h1 class="animated fadeIn">{!! $headline !!}</h1>
    @endif
    <div class="col-md-12">
    	<div class="page_body">
    		<?= $page->body ?>
    	</div>
    </div>
    <div style="clear:both"></div>
</div>

@endsection
