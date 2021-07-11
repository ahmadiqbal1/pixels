<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc>{{ url('/') }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime(date('Y-m-d H:i:s'))) }}</lastmod>
        <priority>1.0</priority>
    </url>

@foreach($downloads as $download)
    <url>
        <loc>{{ url('/' . $download_url_slug . '/' . $download->slug) }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime(date('Y-m-d H:i:s'))) }}</lastmod>
        <priority>0.9</priority>
    </url>
@endforeach

@foreach($categories as $category)
    <url>
        <loc>{{ url('/category/' . $category->slug) }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime(date('Y-m-d H:i:s'))) }}</lastmod>
        <priority>0.9</priority>
    </url>
@endforeach

@foreach($tags as $tag)
    <url>
        <loc>{{ url('/tags/' . $tag->slug) }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime(date('Y-m-d H:i:s'))) }}</lastmod>
        <priority>0.9</priority>
    </url>
@endforeach

<url>
    <loc>{{ url('/blog') }}</loc>
    <lastmod>{{ gmdate(DateTime::W3C, strtotime(date('Y-m-d H:i:s'))) }}</lastmod>
    <priority>0.9</priority>
</url>

@foreach($posts as $post)
    <url>
        <loc>{{ url('/blog/' . $post->slug) }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime($post->updated_at)) }}</lastmod>
        <priority>0.9</priority>
    </url>
@endforeach

@foreach($pages as $page)
    <url>
        <loc>{{ url('/page/' . $page->slug) }}</loc>
        <lastmod>{{ gmdate(DateTime::W3C, strtotime($page->updated_at)) }}</lastmod>
        <priority>0.9</priority>
    </url>
@endforeach
</urlset>