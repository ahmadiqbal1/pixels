<?='<?xml version="1.0" encoding="UTF-8" ?>'?>
<rss version="2.0"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:content="http://purl.org/rss/1.0/modules/content/"
>
<channel>
  <title>{{ setting('title') }}</title>
  <description>{{ setting('description') }}</description>
  <link>{{ url('/') }}</link>
  <atom:link href="{{ url('rss') }}" rel="self" type="application/rss+xml" />
  
  @foreach($downloads as $download)
  <item>
      <title>{{ $download->title }}</title>
      <description><![CDATA[{{ $download->description }}]]></description>
      <pubDate>{{ $download->created_at->format(DATE_RSS) }}</pubDate>
      <link>{{ $download->link() }}</link>
      <content:encoded>
        <![CDATA[
          <img class="type:primaryImage" src="{{ Voyager::image($download->image) }}"/>
          {!! $download->description !!}
        ]]>
      </content:encoded>
      <category><![CDATA[{{ $download->category->name }}]]></category>
      <guid isPermaLink="false">download {{ $download->id }}</guid>
  </item>
  @endforeach

</channel>
</rss>