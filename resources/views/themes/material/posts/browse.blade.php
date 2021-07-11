@extends('themes.material.layouts.app')

@section('content')

<div id="blog" class="container">
    <div class="row">
        <div class="col-md-8">
        	<div class="post_list">
                @foreach($posts as $post)
                	<section>
                        <div class="thumbnail">
                            <a href="{{ $post->link() }}" rel="bookmark" style="background-image:url('{{ Voyager::image( $post->image ) }}')" title="{{ $post->title }}"></a>
                        </div>
                        <div class="post_details">
                            <h3><a href="{{ $post->link() }}" rel="bookmark" title="{{ $post->title }}">{{ $post->title }}</a></h3>
                            <time datetime="{{ $post->created_at }}">{{ date('F j, Y', strtotime($post->created_at)) }}</time>
                            <div class="excerpt">
                                {{ $post->excerpt }}
                            </div>
                        </div>
                    </section>
                @endforeach
        	</div>
            <div id="pagination-container">
                {{ $posts->links() }}
            </div>
        </div>
        <div class="col-md-4 sidebar latest-downloads">
            <div class="ads300x250">
                @include('themes.material.partials.ads300x250')
            </div>
            <h4>Latest Downloads</h4>
            @foreach($downloads as $download)
                <a href="<?= route('download', $download->slug) ?>" style="background:url('<?= Voyager::image($download->image) ?>');">
                    <span>{{ $download->title }}</span>
                </a>
            @endforeach
        </div>
    </div>
    <div style="clear:both"></div>
</div>

@endsection
