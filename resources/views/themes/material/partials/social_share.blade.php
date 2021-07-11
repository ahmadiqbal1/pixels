<div id="social_shares">
    <a href="https://www.facebook.com/sharer/sharer.php?u=<?= Request::url() ?>" target="_blank" title="Share on Facebook" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;"><i class="geekshop-facebook"></i></a>
    <a href="https://twitter.com/intent/tweet?url=<?= Request::url() ?>&text=<?= $share_title ?>" data-url="<?= Request::url() ?>" title="Share on Twitter" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;"><i class="geekshop-twitter"></i></a>
    <a href="https://plus.google.com/share?url=<?= Request::url() ?>" target="_blank" title="Share on Google" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;"><i class="geekshop-google"></i></a>
    <a href="//www.pinterest.com/pin/create/button/?url=<?= Request::url() ?>&media=<?= $share_image ?>&description=<?= $share_title ?>" title="Pin it" target="_blank" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=no,scrollbars=no,height=400,width=600');return false;"><i class="geekshop-pinterest"></i></a>
    <a href="mailto:?body=<?= Request::url() ?>"><i class="geekshop-envelope"></i></a>
    <div class="clear"></div>
</div>