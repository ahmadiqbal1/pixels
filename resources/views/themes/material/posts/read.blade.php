@extends('themes.material.layouts.app')

@section('content')

<div id="post" class="container">
    <div class="row">
        <div class="col-md-8">
        	
        	<img id="post_image" src="{{ Voyager::image( $post->image ) }}" alt="{{ $post->title }}">
            <time datetime="{{ $post->created_at }}">Posted on {{ date('F j, Y', strtotime($post->created_at)) }}</time>
        	@include('themes.material.partials.social_share', ['share_title' => $post->title, 'share_image' => Voyager::image($post->image)])
            
            <div class="post_body">
                <?= $post->body ?>
        	</div>
            @include('themes.material.partials.comments', ['slug_id' => $post->slug])

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
