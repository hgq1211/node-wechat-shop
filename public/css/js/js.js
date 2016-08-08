/*Design by liuwz 2014.9.30 CSS rest */
(function($,h,c){var a=$([]),e=$.resize=$.extend($.resize,{}),i,k="setTimeout",j="resize",d=j+"-special-event",b="delay",f="throttleWindow";e[b]=0;e[f]=true;$.event.special[j]={setup:function(){if(!e[f]&&this[k]){return false}var l=$(this);a=a.add(l);$.data(this,d,{w:l.width(),h:l.height()});if(a.length===1){g()}},teardown:function(){if(!e[f]&&this[k]){return false}var l=$(this);a=a.not(l);l.removeData(d);if(!a.length){clearTimeout(i)}},add:function(l){if(!e[f]&&this[k]){return false}var n;function m(s,o,p){var q=$(this),r=$.data(this,d);r.w=o!==c?o:q.width();r.h=p!==c?p:q.height();n.apply(this,arguments)}if($.isFunction(l)){n=l;return m}else{n=l.handler;l.handler=m}}};function g(){i=h[k](function(){a.each(function(){var n=$(this),m=n.width(),l=n.height(),o=$.data(this,d);if(m!==o.w||l!==o.h){n.trigger(j,[o.w=m,o.h=l])}});g()},e[b])}})(jQuery,this);

function navMov(){
var liCont = $('#main > .nav li');
	 liCont.each(function (i){
		 $(this).css('left', -65 );
		 $(this).delay(i*50);
		 $(this).animate({left:0},300);
     });
	}

function subImg(imgNum){
	$("#"+imgNum).append("<div class='star-dh'></div>")
	setTimeout(function () {$("#"+imgNum).find("img").addClass("vv");}, 300);
setTimeout(function () {
        $(".star-dh").hide();
    }, 700);
	}

$(document).ready(function() {
		jQuery('.pm,.dj').each(function() {
			jQuery(this).appear(function() {
				var $endNum = parseInt(jQuery(this).find('b').text());
				jQuery(this).find('b').countTo({
					from: 0,
					to: $endNum,
					speed: 1000,
					refreshInterval: 50,
				});
			},{accX: 0, accY: 0});
		});
		
		jQuery('.cr,.cg').each(function() {
			jQuery(this).appear(function() {
				var $endNum = parseInt(jQuery(this).find('b').text());
				jQuery(this).find('b').countTo({
					from: 0,
					to: $endNum,
					speed: 1000,
					refreshInterval: 50,
				});
			},{accX: 0, accY: 0});
		});

$.scrollUp();
		$("#cai").click(function(){
		$(this).toggleClass("sel");
		//$(this).parent().toggleClass("bline");
		$("#nav").slideToggle();
    //vh=$(".nav").height()+64;
//		if($(".nav").is(":visible")==false){
//			$("#content").css("margin-top","54px");}else{$("#content").css("margin-top",vh);}
		})
	//$('#main').css('width',$(window).width());
//	$(window).resize(function(){
//		$('#main').css('width',$(window).width()+66);})
$(".selBtn").click(function(){
	$(this).toggleClass("sel");
	})
$('.bac,.bacBtn').click(function(){
	$('#main > .nav').animate({marginLeft:'-66'},300);
	$('.content').animate({marginLeft:'0'},300);
	});
$('#menu').click(function(){
	var nav=$("#main > .nav");
        var left = nav.css("margin-left");
        if (left == "0px") {
            nav.animate({ marginLeft: '-66' }, 300);
            $('.content').animate({ marginLeft: '0' }, 300);
        } else {
            nav.animate({ marginLeft: '0' }, 300);
            $('.content').animate({ marginLeft: '66' }, 300);
            navMov();
        }
	});
$(".t-color,.t-size").click(function(){
	$(this).parent().find(".sel").removeClass("sel");
	$(this).toggleClass("sel");
	})
})