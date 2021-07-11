@extends('themes.default.layouts.app')


@section('content')
	<div class="content">
		<div class="container">
			<div class="row">	
				
				@include('themes.default.partials.ads728x90')
				
				<div class="contentdownload">
						
					<div class="col-md-8">

						<div class="titledownload">

							<h3>{{ ucwords($download->title) }}</h3>
							<p><span><?= date("F j, Y", strtotime($download->created_at)) ?></span> /

								@foreach($download->tags as $tag)
									<a href="/tags/<?= $tag->slug ?>" class="modal_pop"><?= $tag->name ?></a>@if(!$loop->last),@endif
								@endforeach
							</p>

						</div>

						<div class="imgdownload">							
								
							<div class="imagescnt">
								<img src="{{ Voyager::image($download->image) }}">
							</div>
							
							<div class="sharedownload">
								<?php $media_url = route('download', $download->slug); ?>
								<div class="share_twitter share col-md-3">
									<a href="https://twitter.com/intent/tweet?text=<?= ucwords($download->title) ?>&url=<?=$media_url?>" target="_blank" onclick="javascript:window.open(this.href, '_blank', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;">Share on Twitter</a>
								</div>
								<div class="share_facebook share col-md-3">
									<a href="http://www.facebook.com/sharer.php?u=<?=$media_url?>" target="_blank" onclick="javascript:window.open(this.href, '_blank', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;">Share on Facebook</a>
								</div>
								<div class="share_pinterest share col-md-3">
									<a href="http://pinterest.com/pin/create/button/?url=<?=$media_url?>" target="_blank" onclick="javascript:window.open(this.href, '_blank', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;">Share on Pinterest</a>
								</div>
								<div class="share_google share col-md-3">
									<a href="https://plus.google.com/share?url=<?=$media_url?>" target="_blank" onclick="javascript:window.open(this.href, '_blank', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;">Share on Google+</a>
								</div>
								<div style="clear:both"></div>
							</div>

							<div class="description">
								<h3>Description and Details</h3>
								<p><?= $download->description ?></p>
							</div>

							<div class="btn-down-like">
								<input type="hidden" name="_token" value="{{ csrf_token() }}">
								<input type="hidden" name="_token2" value="{{ csrf_token() }}">
								<input type="hidden" name="modal" id="modal_link" value="{{ $modal }}">
								<a href="javascript:void(0);" class="btndownload btn btn-success" download-id="{{ $download->id }}" download-slug="{{ $download->slug }}"><i class="fa fa-cloud-download"></i> Download (<span id="id-{{ $download->slug }}"><?= $download->downloads ?></span>)</a>
								<a href="javascript:void(0)" class="buttonlike buttonlike2 btn btn-danger" download-id="{{ $download->id }}" download-slug="{{ $download->slug }}"><i class="fa fa-heart"></i> Like (<b id="id-{{ $download->slug }}"><?= $download->likes ?></b>)</a>
							</div>
							
						</div><!-- imgdownload -->
							
						<div class="alsolike">

							<h3>You may also like</h3>
							<div class="row">
								<?php foreach($alsolike as $itemAlso): ?>
									<div class="alsoimg col-sm-4">
										<a href="<?= route('download', $itemAlso->slug) . $modal ?>">
											<div>
												<img src="{{ Voyager::image($itemAlso->image) }}">
											</div>
											<p class="titleAlso"><?= ucwords($itemAlso->title) ?><br /><small>Added on <?= date("F j, Y", strtotime($itemAlso->created_at)); ?></small></p>
										</a>
									</div>
								<?php endforeach; ?>
							</div>

						</div>

						<div class="commentdownload">

							<h3>Comments</h3>
							<div id="disqus_thread"></div>
							<script>

								/* * * CONFIGURATION VARIABLES * * */
								var disqus_shortname = '<?= setting("disqus") ?>';

								(function() { // DON'T EDIT BELOW THIS LINE
								var d = document, s = d.createElement('script');
								s.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';
								s.setAttribute('data-timestamp', +new Date());
								(d.head || d.body).appendChild(s);
								})();

							</script>
							<noscript>Please enable JavaScript to view the comments.</noscript>

						</div>

					</div><!-- .col-md-8 -->

					<div class="col-md-4">
						
						<div class="btn-next-prev">
							
							@if(isset($previous))
								<a href="{{ route('download', $previous->slug) . $modal }}" class="btn btn-danger"><i style="font-size:10px; position:relative; top:-1px;" class="fa fa-chevron-left"></i> <span>Previous</span></a>
							@endif
							
							@if(isset($next))
								<a href="{{ route('download', $next->slug) . $modal }}" class="btn btn-danger"><span>Next</span> <i class="fa fa-chevron-right" style="font-size:10px; position:relative; top:-1px;"></i></a>
							@endif
						
						</div>

						<div class="ads300x250">
							@include('themes.default.partials.ads300x250')
						</div>
						<div class="popular">
							<h3>Popular</h3>
							<?php foreach($popular as $itemPop): ?>
								<a href="{{ route('download', $itemPop->slug)  . $modal }}" class="popular-child">
									<div class="img_popular">
										<img src="{{ Voyager::image($itemPop->image) }}">
									</div>
									<p class="titlepop"><?= ucwords($itemPop->title) ?><br /><small>Added on <?= date("F j, Y", strtotime($itemPop->created_at)); ?></small></p>
								</a>
							<?php endforeach; ?>
						</div>
						<div class="mostlike">
							<h3>Most Liked</h3>
							<?php foreach($mostlike as $itemMost): ?>
								<a href="<?= route('download', $itemMost->slug)  . $modal ?>" class="popular-child">
									<div class="img_popular">
										<img src="{{ Voyager::image($itemMost->image) }}">
									</div>
									<p class="titlepop"><?= ucwords($itemMost->title) ?><br /><small>Added on <?= date("F j, Y", strtotime($itemMost->created_at)); ?></small></p>
								</a>
							<?php endforeach; ?>
						</div>
					</div><!-- .col-md-4 -->

				</div><!-- .contentdownload -->

			</div><!-- .row -->

		</div><!-- .container -->

	</div><!-- .contentHome -->
@stop