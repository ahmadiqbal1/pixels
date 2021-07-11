@extends('themes.default.layouts.app')

@section('content')

<div id="post" class="container">
    <div class="row">
        
        <div class="col-md-8">
        	<img id="post_image" src="{{ Voyager::image( $post->image ) }}" alt="{{ $post->title }}">
            @if(isset($headline))
                <h1 class="animated fadeIn">{!! $headline !!}</h1>
            @endif
            <time datetime="{{ $post->created_at }}">Posted on {{ date('F j, Y', strtotime($post->created_at)) }}</time>
            
            <div class="post_body">
                <?= $post->body ?>
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

        </div>
        <div class="col-md-4 sidebar">
            <h4>Other Posts You May Like</h4>
            @foreach($random_posts as $random_post)
                <a href="/blog/{{ $random_post->slug }}"  style="background:url('<?= Voyager::image($random_post->image) ?>');">
                    <span>{{ $random_post->title }}</span>
                </a>
            @endforeach
        </div>
    </div>
    <div style="clear:both"></div>
</div>

@endsection
