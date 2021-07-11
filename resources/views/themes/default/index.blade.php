@extends('themes.default.layouts.app')

@section('content')

	<div class="content contentHome">
		<div class="container">
			<div class="row">
				@if(isset($headline))
					<h1 class="animated fadeIn">{!! $headline !!}</h1>
				@endif

				@if(isset($subheadline)) 
					<h3>{{ $subheadline }}</h3>
				@endif
				<div class="col-sm-12">

					<div id="downloads" style="padding-bottom:30px;">
						@include('themes.default.partials.downloads')
					</div>

					<input type="hidden" id="total_downloads" value="<?= $downloads->total(); ?>">
					<input type="hidden" id="page_number" value="<?= $downloads->currentPage(); ?>">
					<!-- Load More Button -->
					<div class="divloadmore" id="showloadmore">
						<button id="loadMore" class="load_more btn btn-danger btn-lg btn-block"><i class="fa fa-plus-circle"></i> Load More</button>
					</div>
					
					<!-- Load More Loading button -->
					<div class="divloadmore" id="loading">
						<button id="loadMore" class="btn btn-danger btn-lg btn-block">
							<div class="load_more">
							  <span></span>
							  <span></span>
							  <span></span>
							  <span></span>
							  <span></span>
							  <span></span>
							  <span></span>
							</div>
						</button>
					</div>

				</div>
			</div>
		</div>
	</div>
	
@stop
