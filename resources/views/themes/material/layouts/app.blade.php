<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>@if(isset($seo->title)){{ $seo->title }}@else{{ setting('title') . ' - ' . setting('description') }}@endif</title>

	<!-- only set meta description and keywords if exists -->
	@if(isset($seo->meta_description))
		<meta name="description" content="{{ $seo->meta_description }}">
	@endif

	@if(isset($seo->meta_keywords))
		<meta name="keywords" content="{{ $seo->meta_keywords }}">
	@endif

	@if(isset($seo->twitter_description))
		<meta name="twitter:description" content="{{ $seo->twitter_description }}">
		<meta name="twitter:card" content="summary_large_image" />
		<meta name="twitter:site" content="{{ '@' . setting('twitter') }}" />
	@endif

	@if(isset($seo->og_title) && isset($seo->og_image))

		<meta property="og:title" content="{{ $seo->og_title }}"/>
		<meta property="og:url" content="{{ rtrim(Request::url(), '/') }}"/>
		<meta property="og:image" content="{{ $seo->og_image }}"/>
		<meta property="og:type" content="article" />

		@if(isset($seo->og_image_width))
			<meta property="og:image:width" content="{{ $seo->og_image_width }}" />
		@endif

		@if(isset($seo->og_image_height))
		  <meta property="og:image:height" content="{{ $seo->og_image_height }}" />
		@endif

	@endif

	<meta name="csrf-token" content="{{ csrf_token() }}" />
	<link rel="shortcut icon" href="{{ Voyager::image(setting('favicon')) }}" type="image/x-icon">

	<!-- Canonical URL -->
	@if(isset($seo->canonical_url))
		<link rel="canonical" href="{{ $seo->canonical_url }}" />
	@else
		<link rel="canonical" href="{{ rtrim(Request::url(), '/') }}" />
	@endif
	
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="stylesheet" href="/assets/material/css/style.css">

	@if(setting("color_scheme", "light") == "dark" || (isset($_COOKIE['theme']) && $_COOKIE['theme'] == 'material_dark'))
		<link rel="stylesheet" type="text/css" href="/assets/material/css/dark.css">
	@endif

</head>

<body class="@if(Request::is('category/*')){{ 'category' }}@endif @if(Request::get('modal')){{ 'modal_open' }}@endif">
	<div class="main_content">
		<!-- BEGIN HEADER -->
		<header class="header">

			<nav class="navbar navbar-primary navbar-transparent navbar-fixed-top navbar-color-on-scroll">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-primary">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						
						@if(setting('demo_mode', 'on'))
							<a href="/" class="navbar-brand"><img src="/assets/material/img/light-logo.png" /></a>
						@else
							<?php if (setting('logo', '')){ ?>
								<a href="/" class="navbar-brand"><img src="{{ Voyager::image(setting('logo')) }}" /></a>
							<?php }else {?>
									<a href="/" class="navbar-brand"><img src="/assets/material/img/logo.png" /></a>
							<?php }?>
						@endif

					</div>

					<div class="collapse navbar-collapse" id="example-navbar-primary">
						<button id="search-toggle" class="btn btn-raised btn-fab btn-fab-mini btn-search"><i class="fa fa-search"></i><i class="fa fa-close"></i></button>
						<form class="navbar-form navbar-right" id="search-form" method="GET" action="/search" role="search">
							
							<div class="form-group form-white is-empty">
								<input type="text" class="form-control" name="search" placeholder="Search">
								<span class="material-input"></span>
							</div>
							
						</form>
						<?= menu('main', 'bootstrap'); ?>
						
					</div>
				</div>
			</nav>

			<div class="header header-filter" style="background-image: url('{{ Voyager::image(setting("material_header_bg")) }}');">
				
				@if(isset($headline))
					<h1 class="animated fadeIn">{!! $headline !!}</h1>
				@endif

				@if(isset($subheadline)) 
					<h3>{{ $subheadline }}</h3>
				@endif

			</div>

			<div class="headerSocial">
				<div class="container">
					<div class="headrow">
						<p class="topHeadline"><?= setting('description') ?></p>
						<ul class="socialTop social">
							<li class="social-btn"><a href="http://facebook.com/<?= setting('facebook') ?>" class="socialIcon facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
							<li class="social-btn"><a href="http://plus.google.com/<?= setting('googleplus') ?>" class="socialIcon" target="_blank"><i class="fa fa-google-plus"></i></a></li>
							<li class="social-btn"><a href="http://twitter.com/<?= setting('twitter') ?>" class="socialIcon" target="_blank"><i class="fa fa-twitter"></i></a></li>
							<li class="social-btn"><a href="/rss" class="socialIcon"><i class="fa fa-rss"></i></a></li>
						</ul>
						<div class="top_bar">
							<?= menu('top_bar', null, array('icon' => true)) ?>
						</div>
					</div>
				</div>
			</div>

		</header>
		<!-- END HEADER -->

		<section class="content">

			<div class="row">
				<!-- BEGIN WIDGET -->
				<div class="col-md-12 col-sm-12">
					<div class="grid no-border">
						@yield('content')
					</div>
				</div>
			</div>

		</section>

		

		<!-- BEGIN FOOTER -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<p><a href="#"><?= setting('title') ?></a> - Copyright <?= date("Y"); ?></p>
					<ul class="socialBot social">
						<li><a href="http://facebook.com/<?= setting('facebook') ?>" class="socialIcon facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
						<li><a href="http://plus.google.com/<?= setting('googleplus') ?>" class="socialIcon" target="_blank"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="http://twitter.com/<?= setting('twitter') ?>" class="socialIcon" target="_blank"><i class="fa fa-twitter"></i></a></li>
						<li><a href="/rss" class="socialIcon"><i class="fa fa-rss"></i></a></li>
					</ul>
					<div class="footer_menu">
						<?= menu('footer_menu') ?>
					</div>
				</div>
			</div>
		</footer>
		<!-- END FOOTER -->
	</div><!-- .main_content -->

	<!-- BEGIN SIDE MODAL -->
	<div id="side-modal">
		<div id="close-doc" class="animated rollIn"><i class="fa fa-close"></i></div>
		<div id="side-loader" class="loader-container arc-rotate2 darker side-loader-container">
		    <div class="loader">
		        <div class="arc"></div>
		    </div>
		</div>
		<div class="morph-shape" id="morph-shape" data-morph-open="M-1,0h101c0,0,0-1,0,395c0,404,0,405,0,405H-1V0z">
			<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 100 800" preserveAspectRatio="none">
				<path d="M-1,0h101c0,0-97.833,153.603-97.833,396.167C2.167,627.579,100,800,100,800H-1V0z"/>
			</svg>
		</div>
	</div>
	<div id="side-bg"></div>
	<!-- END SIDE MODAL -->

	<script>
		var rootpath = "{{ config('view.rootpath') }}";
	</script>                   

	<script src="/assets/material/js/app.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<!-- Google Analytics -->

	<?php if(isset($settings->gganalytic) && trim($settings->gganalytic) != ""): ?>
	  <script>
	    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	    ga('create', '<?= $settings->gganalytic ?>', 'auto');
	    ga('send', 'pageview');
	  </script>
	<?php endif; ?>

	<!-- End Google Analytics -->

</body>
</html>