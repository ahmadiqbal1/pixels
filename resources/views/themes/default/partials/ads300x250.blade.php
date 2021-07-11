@if (setting('ads300x250', ''))
	<div class='ads300x250'><?= setting('ads300x250') ?></div>
@else
	<div class='ads300x250'>
		<img src="/assets/default/img/ads300x250.png">
	</div>
@endif