$(document).ready(function(){
	$('#search-toggle').click(function(){
		$('#search-form').toggle();
		$('#search-form [name="search"]').focus();
		if($('#search-toggle .fa-search').css('display') != 'none'){
			$('#search-toggle .fa-search').hide();
			$('#search-toggle .fa-close').show();
		} else {
			$('#search-toggle .fa-search').show();
			$('#search-toggle .fa-close').hide();
		}
	});
});

// BEGIN JS BUTTON LIKE DOWNLOADPAGE
$(document).ready(function () {
    $("a.buttonlike").click(function() {
		var slug     = $(this).attr("download-slug");
		var _token = $('input[name=_token]').val();

		$.ajax
		({
			type: "POST",
			url: "/download_like/",
			data: {slug: slug, _token: _token},
			success: function(msg)
			{
				$('.buttonlike b#id-'+slug+'').html(msg);
			}
		});
	});

	$("a.btndownload").click(function() {
		var slug = $(this).attr("download-slug");
		var modal_link = $('#modal_link').val();

		$.ajax
		({
			type: "GET",
			url: "/download_count/" + slug,
			success: function(msg)
			{
				$('.btndownload span#id-'+slug+'').html(msg);
				window.location = '/download_page/' + slug + modal_link;
			}
		});
	});
});

// LOAD More functionality

$(document).ready(function($){

    var pageNumber = 2;
    var total = 0;
    var page = 1;

    if(document.getElementById('total_downloads')){
    	total = document.getElementById('total_downloads').value;
    }

    if(document.getElementById('total_downloads')){
    	page = document.getElementById('page_number').value;
    }

    $(".load_more").click(function() {
        $("#showloadmore").hide();   
        $("#loading").show();

        var current_url = window.location.href,
	    separator = (current_url.indexOf("?")===-1)?"?":"&",
	    newParam = separator + "page=" + pageNumber;
	    newUrl = current_url.replace(newParam,"");
	    newUrl += newParam;

        $.ajax
        ({
            type: "GET",
            url: newUrl,
            success: function(msg)
            {
            	if(msg){
            		console.log(msg);
	                $('#downloads').append(msg);
	                $("#showloadmore").show(); 
	                $("#loading").hide();
	                if ((pageNumber *page)-1 > total) {
	                    $("#showloadmore").hide(); 
	                } else {
	                    pageNumber += 1;
	                }
	            } else {
	            	$("#loading").hide();
	            	$('#showloadmore').addClass('animated').addClass('fadeInUp');
	            	$('#showloadmore').html('<p>No more downloads to load</p>');
	            	$('#showloadmore').show();
	            }
            }
        });
    });
    //end loadmore
});


/*
|--------------------------------------------------------------------------
| Download File Functionality
|--------------------------------------------------------------------------
|
| This starts the download on the download_page
| 
*/ 

$(document).ready(function () {
	var callDownload = function(){
		var slug = $('#download_file').attr("download-slug");
		// redirect to imgdownload
		location.href="/download_file/" + slug;
    }
    if($('#download_file').length){
    	var seconds_before_download = parseInt($('#download_wait').val())+1;
    	
    	var countdown = setInterval(function(){
    		seconds_before_download -= 1;
    		$('#countdown').text(seconds_before_download);
  			if(seconds_before_download == 0){ 
  				clearInterval(countdown);
  					$('.load_more').hide();
  			}
    	}, 1000);
    	
    	setTimeout(callDownload,seconds_before_download*1000);
	}
});


/*
|--------------------------------------------------------------------------
| Side Modal Functionality
|--------------------------------------------------------------------------
|
| This is the functionality that loads the side modal when products are
| clicked.
| 
*/ 

$('document').ready(function(){

	setTimeout(function(){
		$('body.modal_open').css('overflow-y', 'visible');
	}, 600);

	morphEl = document.getElementById( 'morph-shape' );
	s = Snap( morphEl.querySelector( 'svg' ) );
	morph_path = s.select( 'path' );
	initialPath = morph_path.attr('d');
	pathOpen = morphEl.getAttribute( 'data-morph-open' );

	$('#downloads').on('click', '.side-modal', function(e){
		e.stopPropagation();
		e.preventDefault();
		$('#side-loader').show();
		$('body').addClass('noscroll').addClass('show-modal');
		$('#side-bg').fadeIn();
		
		$('#side-modal').addClass('visible');
		side_url = $(this).attr('href');
		$('#side-modal').append('<iframe id="doc-frame" class="animated slideInLeft" src="' + side_url + '?modal=true" width="100%" height="100%" style="padding:0px; border:0px; position:absolute; z-index:9"></iframe>');
		morph_path.animate( { 'path' : pathOpen }, 400, mina.easeinout, function() { 
			$('#close-doc').show();
			setTimeout(function(){
				$('#close-doc').removeClass('animated');
			}, 300);
			$('#doc-frame').show();
		} );

		return false;
	});

	

	$('#close-doc, #side-bg').click(function(){
		$('#close-doc').hide();
		$('body').removeClass('noscroll').removeClass('show-modal');
		$('#side-modal').removeClass('visible');
		$('#doc-frame').remove();
		morph_path.attr( 'd', initialPath );
		setTimeout(function(){
			$('#side-bg').fadeOut();
		}, 300);
	});

});

/*
|--------------------------------------------------------------------------
| Popout of Modal Functionality
|--------------------------------------------------------------------------
|
| This is the functionality that is applied to any link that needs to pop
| out of the modal iframe
| 
*/ 

$('document').ready(function(){

	$('.modal_pop').click(function(e){
		e.preventDefault();
		window.parent.location.href = $(this).attr('href');
	});

});

/*
|--------------------------------------------------------------------------
| Override Bootstrap .dropdown-toggle Functionality
|--------------------------------------------------------------------------
|
| The .dropdown-toggle functionality normally prevents default; however,
| any dropdowns or children of the dropdown we want to be active.
| 
*/ 

$('document').ready(function(){
	$('.dropdown-toggle').click(function(){
		window.location = $(this).attr('href');
	});
});

transparent = true;

console.log('hit');
$('.main_content').scroll(function(){
	console.log('test');
	console.log($(document).scrollTop());
	if($(document).scrollTop() > 260 ) {
	    if(transparent) {
	        transparent = false;
	        $('.navbar-color-on-scroll').removeClass('navbar-transparent');
	    }
	} else {
	    if( !transparent ) {
	        transparent = true;
	        $('.navbar-color-on-scroll').addClass('navbar-transparent');
	    }
	}
});