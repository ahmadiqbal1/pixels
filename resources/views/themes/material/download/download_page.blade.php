@extends('themes.material.layouts.app')

@section('content')

	<div class="content">

		<div class="container">

			<div class="row">	

				@include('themes.material.partials.ads728x90')
				
				<div class="contentdownload">
					
					<div download-slug="<?= $download->slug ?>" id="download_file"></div>
					<input type="hidden" id="download_wait" value="{{ setting('download_wait') }}">

					<div class="titleafter">
						@if(Request::get('modal'))
							<h2>Thanks for your Download</h2>
						@endif
						<h3>Your download will be ready in: <span id="countdown"></span></h3>
						<div class="load_more">
							<span></span>
						 	<span></span>
						 	<span></span>
						 	<span></span>
							<span></span>
							<span></span>
						 	<span></span>
						</div>
						<p>Here are a few other goodies you may enjoy below:</p>
					</div>

					<div class="col-sm-12">
						<div id="media" style="padding-bottom:30px;">
							@include('themes.material.partials.downloads')
						</div>
					</div>

				</div><!-- contentdownload -->

			</div><!-- .row -->
		
		</div><!-- .container -->

	</div>
@stop