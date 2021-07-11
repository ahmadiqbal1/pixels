@extends('themes.material.layouts.app')

@section('content')

	<div class="content contentHome">
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12">

					<div id="downloads" style="padding-bottom:30px;">
						@include('themes.material.partials.downloads')
					</div>

					<input type="hidden" id="total_downloads" value="<?= $downloads->total(); ?>">
					<input type="hidden" id="page_number" value="<?= $downloads->currentPage(); ?>">
					<!-- Load More Button -->
					<div class="divloadmore" id="showloadmore">
						<button id="loadMore" class="load_more btn btn-info btn-lg btn-block"><i class="fa fa-plus-circle"></i> Load More</button>
					</div>
					
					<!-- Load More Loading button -->
					<div class="divloadmore" id="loading">
						<button id="loadMore" class="btn btn-info btn-lg btn-block">
							<img src="/assets/material/img/loader.svg"
						</button>
					</div>

				</div>
			</div>
		</div>
	</div>
	
@stop
