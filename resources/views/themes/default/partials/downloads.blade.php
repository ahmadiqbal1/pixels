@foreach($downloads as $download)

	<div class="item_larger animated single-left col-xs-12 col-sm-6 col-md-4 @if(Request::ajax()) animated fadeInUp @else animated fadeIn @endif" data-id="">
		<div class="item" id="<?= $download->id ?>">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<a href="<?= route('download', $download->slug) ?>" class="head_item side-modal item_ajax">
				<div class="dim"></div>
				<img src="<?= Voyager::image($download->image) ?>">
			</a>
			<a class="content_item side-modal" href="<?= route('download', $download->slug) ?>">
				<h3><?= strtoupper($download->title) ?></h3>
				<span class="the-date"><?= date("F j, Y", strtotime($download->created_at)) ?></span>
			</a>
			<div class="item_info">
				<a href="javascript:void(0);" class="buttonlike" align="right" download-slug="<?= $download->slug ?>"><img src="/assets/default/img/icon_like.png"> <b id="id-<?= $download->slug ?>"><?= $download->likes ?></b></a>
				<a href="<?= route('download', $download->slug) ?>" class="download side-modal" align="right"><img src="/assets/default/img/icon_download.png"> <?= $download->downloads ?></a>
			</div>
		</div>
	</div>

@endforeach
	