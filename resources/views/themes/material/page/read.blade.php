@extends('themes.material.layouts.app')

@section('content')

<div id="page" class="container">
    <div class="col-md-12">
    	<div class="page_body">
    		<?= $page->body ?>
    	</div>
    </div>
    <div style="clear:both"></div>
</div>

@endsection
