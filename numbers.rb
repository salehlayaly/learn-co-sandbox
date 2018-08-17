<!DOCTYPE html>
<html lang="en-US" prefix="og: http://ogp.me/ns#">
<link 
rel="stylesheet"
type="text/css"
href="index.css">
<head>
	<meta charset="UTF-8"><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="pingback" href="https://colorlib.com/shapely/xmlrpc.php">

	<title>Disaster Relief</title>
<script>window._wca = window._wca || [];</script>

<!-- This site is optimized with the Yoast SEO plugin v7.9.1 - https://yoast.com/wordpress/plugins/seo/ -->
<link rel="canonical" href="https://colorlib.com/shapely/" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Front Page - Shapely Demo" />
<meta property="og:url" content="https://colorlib.com/shapely/" />
<meta property="og:site_name" content="Shapely Demo" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="Front Page - Shapely Demo" />
<meta name="twitter:creator" content="@ASilkalns" />
<script type='application/ld+json'>{"@context":"https:\/\/schema.org","@type":"WebSite","@id":"#website","url":"https:\/\/colorlib.com\/shapely\/","name":"Shapely Demo","potentialAction":{"@type":"SearchAction","target":"https:\/\/colorlib.com\/shapely\/?s={search_term_string}","query-input":"required name=search_term_string"}}</script>
<!-- / Yoast SEO plugin. -->

<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//secure.gravatar.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Shapely Demo &raquo; Feed" href="https://colorlib.com/shapely/feed/" />
<link rel="alternate" type="application/rss+xml" title="Shapely Demo &raquo; Comments Feed" href="https://colorlib.com/shapely/comments/feed/" />
<!-- This site uses the Google Analytics by MonsterInsights plugin v7.1.0 - Using Analytics tracking - https://www.monsterinsights.com/ -->
<script type="text/javascript" data-cfasync="false">
	var mi_version         = '7.1.0';
	var mi_track_user      = true;
	var mi_no_track_reason = '';
	
	var disableStr = 'ga-disable-UA-23581568-13';

	/* Function to detect opted out users */
	function __gaTrackerIsOptedOut() {
		return document.cookie.indexOf(disableStr + '=true') > -1;
	}

	/* Disable tracking if the opt-out cookie exists. */
	if ( __gaTrackerIsOptedOut() ) {
		window[disableStr] = true;
	}

	/* Opt-out function */
	function __gaTrackerOptout() {
	  document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
	  window[disableStr] = true;
	}
	
	if ( mi_track_user ) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','__gaTracker');

window.ga = __gaTracker;		__gaTracker('create', 'UA-23581568-13', 'auto');
		__gaTracker('set', 'forceSSL', true);
		__gaTracker('set', 'anonymizeIp', true);
		__gaTracker('set', 'displayFeaturesTask', null);
		__gaTracker('send','pageview');
	} else {
		console.log( "" );
		(function() {
			/* https://developers.google.com/analytics/devguides/collection/analyticsjs/ */
			var noopfn = function() {
				return null;
			};
			var noopnullfn = function() {
				return null;
			};
			var Tracker = function() {
				return null;
			};
			var p = Tracker.prototype;
			p.get = noopfn;
			p.set = noopfn;
			p.send = noopfn;
			var __gaTracker = function() {
				var len = arguments.length;
				if ( len === 0 ) {
					return;
				}
				var f = arguments[len-1];
				if ( typeof f !== 'object' || f === null || typeof f.hitCallback !== 'function' ) {
					console.log( 'Not running function __gaTracker(' + arguments[0] + " ....) because you are not being tracked. " + mi_no_track_reason );
					return;
				}
				try {
					f.hitCallback();
				} catch (ex) {

				}
			};
			__gaTracker.create = function() {
				return new Tracker();
			};
			__gaTracker.getByName = noopnullfn;
			__gaTracker.getAll = function() {
				return [];
			};
			__gaTracker.remove = noopfn;
			window['__gaTracker'] = __gaTracker;
			window.ga = __gaTracker;		})();
		}
</script>
<!-- / Google Analytics by MonsterInsights -->
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/colorlib.com\/shapely\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.8"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56760,9792,65039],[55358,56760,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
/* img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
} */
</style>
<link rel='stylesheet' id='woocommerce-layout-css'  href='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css?ver=3.4.4' type='text/css' media='all' />
<style id='woocommerce-layout-inline-css' type='text/css'>

	.infinite-scroll .woocommerce-pagination {
		display: none;
	}
</style>
<link rel='stylesheet' id='woocommerce-smallscreen-css'  href='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css?ver=3.4.4' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css'  href='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/css/woocommerce.css?ver=3.4.4' type='text/css' media='all' />
<style id='woocommerce-inline-inline-css' type='text/css'>
.woocommerce form .form-row .required { visibility: visible; }
</style>
<link rel='stylesheet' id='dashicons-css'  href='https://cdn.colorlib.com/shapely/wp-includes/css/dashicons.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/css/bootstrap.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/css/font-awesome.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='shapely-fonts-css'  href='//fonts.googleapis.com/css?family=Raleway%3A100%2C300%2C400%2C500%2C600%2C700%7COpen+Sans%3A400%2C500%2C600&#038;ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='flexslider-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/css/flexslider.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='shapely-style-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/style.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='owl.carousel-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/owl-carousel/owl.carousel.min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='owl.carousel.theme-css'  href='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/owl-carousel/owl.theme.default.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack-widget-social-icons-styles-css'  href='https://cdn.colorlib.com/shapely/wp-content/plugins/jetpack/modules/widgets/social-icons/social-icons.css?ver=20170506' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='https://cdn.colorlib.com/shapely/wp-content/plugins/jetpack/css/jetpack.css?ver=6.4.2' type='text/css' media='all' />
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<link rel='https://api.w.org/' href='https://colorlib.com/shapely/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://colorlib.com/shapely/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://cdn.colorlib.com/shapely/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.9.8" />
<meta name="generator" content="WooCommerce 3.4.4" />
<link rel='shortlink' href='https://wp.me/P7gK7P-u3' />
<link rel="alternate" type="application/json+oembed" href="https://colorlib.com/shapely/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fcolorlib.com%2Fshapely%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://colorlib.com/shapely/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fcolorlib.com%2Fshapely%2F&#038;format=xml" />

<link rel='dns-prefetch' href='//v0.wordpress.com'/>
<style type='text/css'>img#wpstats{display:none}</style><style type="text/css"></style>	<noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
	      <meta name="onesignal" content="wordpress-plugin"/>
          <link rel="manifest"
            href="https://colorlib.com/shapely/wp-content/plugins/onesignal-free-web-push-notifications/sdk_files/manifest.json.php?gcm_sender_id="/>
          <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async></script>    <script>

      window.OneSignal = window.OneSignal || [];

      OneSignal.push( function() {
        OneSignal.SERVICE_WORKER_UPDATER_PATH = "OneSignalSDKUpdaterWorker.js.php";
        OneSignal.SERVICE_WORKER_PATH = "OneSignalSDKWorker.js.php";
        OneSignal.SERVICE_WORKER_PARAM = { scope: '/' };

        OneSignal.setDefaultNotificationUrl("https://colorlib.com/shapely");
        var oneSignal_options = {};
        window._oneSignalInitOptions = oneSignal_options;

        oneSignal_options['wordpress'] = true;
oneSignal_options['appId'] = '';
oneSignal_options['autoRegister'] = false;
oneSignal_options['httpPermissionRequest'] = { };
oneSignal_options['httpPermissionRequest']['enable'] = true;
oneSignal_options['welcomeNotification'] = { };
oneSignal_options['welcomeNotification']['title'] = "";
oneSignal_options['welcomeNotification']['message'] = "";
oneSignal_options['path'] = "https://cdn.colorlib.com/shapely/wp-content/plugins/onesignal-free-web-push-notifications/sdk_files/";
oneSignal_options['promptOptions'] = { };
oneSignal_options['notifyButton'] = { };
oneSignal_options['notifyButton']['enable'] = true;
oneSignal_options['notifyButton']['position'] = 'bottom-right';
oneSignal_options['notifyButton']['theme'] = 'default';
oneSignal_options['notifyButton']['size'] = 'medium';
oneSignal_options['notifyButton']['prenotify'] = true;
oneSignal_options['notifyButton']['showCredit'] = true;
oneSignal_options['notifyButton']['text'] = {};
              OneSignal.init(window._oneSignalInitOptions);
                    });

      function documentInitOneSignal() {
        var oneSignal_elements = document.getElementsByClassName("OneSignal-prompt");

        var oneSignalLinkClickHandler = function(event) { OneSignal.push(['registerForPushNotifications']); event.preventDefault(); };        for(var i = 0; i < oneSignal_elements.length; i++)
          oneSignal_elements[i].addEventListener('click', oneSignalLinkClickHandler, false);
      }

      if (document.readyState === 'complete') {
           documentInitOneSignal();
      }
      else {
           window.addEventListener("load", function(event){
               documentInitOneSignal();
          });
      }
    </script>

			<style type="text/css" id="wp-custom-css">
				span.dropdown-toggle.shapely-dropdown {
    display: none;
}			</style>
		<script async src='https://stats.wp.com/s-201833.js'></script>
</head>

<body class="home page-template page-template-page-templates page-template-template-home page-template-page-templatestemplate-home-php page page-id-1863 woocommerce-no-js has-sidebar-right">
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content">Skip to content</a>

	<header id="masthead" class="site-header" role="banner">
		<div class="nav-container">
			<nav  id="site-navigation" class="main-navigation" role="navigation">
				<div class="container nav-bar">
					<div class="flex-row">
						<div class="module left site-title-container">
							<a href="https://colorlib.com/shapely/" class="custom-logo-link"><span class="site-title"></span></a>						</div>
						<div class="module widget-handle mobile-toggle right visible-sm visible-xs">
							<i class="fa fa-bars"></i>
						</div>
						<div class="module-group right">
							<div class="module left">
								<div class="collapse navbar-collapse navbar-ex1-collapse"><ul id="menu" class="menu"><li id="menu-item-1636" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-1636 active"><a title="Home" href="https://colorlib.com/shapely/">Home</a></li>
<li id="menu-item-1637" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1637">
<li id="menu-item-1847" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1847"><a title="Portfolio" href="about.html">About</a></li>
<li id="menu-item-1639" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1639 dropdown"><a title="About The Tests" href="userinput.rb">About The Tests </a><span class="dropdown-toggle shapely-dropdown" data-toggle="dropdown"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
<ul role="menu" class=" dropdown-menu">
	<li id="menu-item-1697" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1697"><a title="Page Image Alignment" href="https://colorlib.com/shapely/about/page-image-alignment/">Page Image Alignment</a></li>
	<li id="menu-item-1698" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1698"><a title="Page Markup And Formatting" href="https://colorlib.com/shapely/about/page-markup-and-formatting/">Page Markup And Formatting</a></li>
	<li id="menu-item-1640" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1640"><a title="Clearing Floats" href="https://colorlib.com/shapely/about/clearing-floats/">Clearing Floats</a></li>
	<li id="menu-item-1641" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1641"><a title="Page with comments" href="https://colorlib.com/shapely/about/page-with-comments/">Page with comments</a></li>
	<li id="menu-item-1642" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1642"><a title="Page with comments disabled" href="https://colorlib.com/shapely/about/page-with-comments-disabled/">Page with comments disabled</a></li>
</ul>
</li>
<li id="menu-item-1643" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1643 dropdown"> <span class="dropdown-toggle shapely-dropdown" data-toggle="dropdown"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
<ul role="menu" class=" dropdown-menu">
	<li id="menu-item-1644" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1644 dropdown"><a title="Level 2" href="https://colorlib.com/shapely/level-1/level-2/">Level 2 </a><span class="dropdown-toggle shapely-dropdown" data-toggle="dropdown"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
	<ul role="menu" class=" dropdown-menu">
		<li id="menu-item-1645" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1645"><a title="Level 3" href="https://colorlib.com/shapely/level-1/level-2/level-3/">Level 3</a></li>
		<li id="menu-item-1699" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1699"><a title="Level 3a" href="https://colorlib.com/shapely/level-1/level-2/level-3a/">Level 3a</a></li>
		<li id="menu-item-1700" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1700"><a title="Level 3b" href="https://colorlib.com/shapely/level-1/level-2/level-3b/">Level 3b</a></li>
	</ul>
</li>
	<li id="menu-item-1701" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1701"><a title="Level 2a" href="https://colorlib.com/shapely/level-1/level-2a/">Level 2a</a></li>
	<li id="menu-item-1702" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1702"><a title="Level 2b" href="https://colorlib.com/shapely/level-1/level-2b/">Level 2b</a></li>
</ul>
</li>
<li id="menu-item-1885" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1885 dropdown"><span class="dropdown-toggle shapely-dropdown" data-toggle="dropdown"><i class="fa fa-angle-down" aria-hidden="true"></i></span>
<ul role="menu" class=" dropdown-menu">
	<li id="menu-item-1703" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1703"><a title="Page A" href="https://colorlib.com/shapely/page-a/">Page A</a></li>
	<li id="menu-item-1704" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1704"><a title="Page B" href="https://colorlib.com/shapely/page-b/">Page B</a></li>
</ul>
</li>
</ul></div>							</div>
							<!--end of menu module-->
							<div class="module widget-handle search-widget-handle hidden-xs hidden-sm">
								<div class="search">
									<i class="fa fa-search"></i>
									<span class="title">Site Search</span>
								</div>
								<div class="function">
									<form role="search" method="get" id="searchform" class="search-form" action="https://colorlib.com/shapely/" >
    <label class="screen-reader-text" for="s">Search for:</label>
    <input type="text" placeholder="Type Here" value="" name="s" id="s" />
    <button type="submit" class="searchsubmit"><i class="fa fa-search" aria-hidden="true"></i><span class="screen-reader-text">Search</span></button>
    </form>								</div>
							</div>
						</div>
						<!--end of module group-->
					</div>
				</div>
			</nav><!-- #site-navigation -->
		</div>
	</header><!-- #masthead -->
	<div id="content" class="main-container">
		
		<section class="content-area ">
			<div id="main" class="" role="main">
<div id="shapely_home_parallax-2" class="widget shapely_home_parallax">		<section class="cover fullscreen image-bg">
						<div class="parallax-window fullscreen" data-parallax="scroll" data-image-src="https://cdn.colorlib.com/shapely/wp-content/uploads/sites/12/2016/03/photo-1443527216320-7e744084f5a7-1.jpg" data-ios-fix="true" data-over-scroll-fix="true" data-android-fix="true">
				<div class="align-transform">
					
						<div class="row">

							
							<div class="top-parallax-section">
								<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
									<h1>Disaster Relief</h1><div class="mb32"><p style = "font-size:20px;">This website is dedicated to providing resources for those suffering from the aftermath of natural disasters and those who wish to help</p>
</div><a class="btn btn-lg btn-white" href="#">Do you want to help?</a><a class="btn btn-lg btn-filled" href="about.html">About</a>								</div>
							</div>
							<!--end of row-->
													</div>
					</div>
								
								
							<div class="col-md-4 col-md-offset-1 col-sm-5 col-sm-offset-1">
								<div class="">
									

							</div>
							<!--end of row-->
															<div class="col-md-7 col-md-offset-1 col-sm-6 col-sm-offset-1 text-center">
									
								</div>
														</div>
					</div>
							
						<div class="row">

							
							<!-- <div class="top-parallax-section">
								<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
									<h1>Small Parallax Section</h1><div class="mb32"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet rhoncus porta. Ut quis sem quis purus lobortis dictum. Aliquam nec dignissim nisl. Vivamus cursus feugiat sapien, eget tincidunt leo ornare quis.</p> -->
</div>								</div>
							</div>
							<!--end of row-->
													</div>
					</div>
									</div>
						

							
														</div>
							</div>
							<!--end of row-->
											
								</div>
														</div>
					</div>
							
			</div>
			
				<div class="row masonry-loader fixed-center fadeOut">
					<div class="col-sm-12 text-center">
						<div class="spinner"></div>
					</div>
				</div>
								<div class="row fadeIn masonry masonryFlyIn">
												<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div> -->
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
								
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
								
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																			</div>
									</a>
								</div>
							</div>
														<div class="col-md-3 col-sm-6 project fadeIn masonry-item">
								<div class="image-tile inner-title hover-reveal text-center" style="">
																		</div>
									</a>
								</div>
							</div>
											</div>
												
													</div>
											

											
																					</ul>
									</div>
								</div>
							</div>
							<!--end of row-->
						</div>
					</div>
					<!--end of container-->
				</div>
			</section>
		</div>
					</div>
					<!--end of row-->
					


</div><!-- #main -->
</section><!-- section -->

<div class="footer-callout">
	</div>

<footer id="colophon" class="site-footer footer bg-dark" role="contentinfo">
	<div class="container footer-inner">
		<div class="row">
			
		</div>

		<div class="row">
			<div class="site-info col-sm-6">
				<div class="copyright-text">
									</div>
				<div class="footer-credits">
					Theme by <a href="https://colorlib.com/" target="_blank" title="Colorlib">Colorlib</a> Powered by <a href="https://wordpress.org/" target="_blank" title="WordPress.org">WordPress</a>				</div>
			</div><!-- .site-info -->
			<div class="col-sm-6 text-right">
				<nav id="social" class="social-icons"><ul id="menu-social-items" class="list-inline social-list"><li id="menu-item-1893" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1893"><a href="https://facebook.com/colorlib"><i class="social_icon fa"><span>Colorlib</span></i></a></li>
<li id="menu-item-1894" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1894"><a href="https://twitter.com/colorlib"><i class="social_icon fa"><span>Twitter</span></i></a></li>
<li id="menu-item-1895" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1895"><a href="https://www.linkedin.com/company-beta/18049034/"><i class="social_icon fa"><span>Linkedin</span></i></a></li>
<li id="menu-item-1923" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1923"><a href="https://youtube.com/c/Colorlib"><i class="social_icon fa"><span>Youtube</span></i></a></li>
<li id="menu-item-1924" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1924"><a href="https://www.instagram.com/colorlib/"><i class="social_icon fa"><span>Instagram</span></i></a></li>
</ul></nav>			</div>
		</div>
	</div>

	<a class="btn btn-sm fade-half back-to-top inner-link" href="#top"><i class="fa fa-angle-up"></i></a>
</footer><!-- #colophon -->
</div>
</div><!-- #page -->

		<script type="text/javascript">
			jQuery( document ).ready( function( $ ) {
				if ( $( window ).width() >= 767 ) {
					$( '.navbar-nav > li.menu-item > a' ).click( function() {
						window.location = $( this ).attr( 'href' );
					} );
				}
			} );
		</script>
			<div style="display:none">
	</div>
	<script type="text/javascript">
		var c = document.body.className;
		c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
		document.body.className = c;
	</script>
	<script type='text/javascript' src='https://s0.wp.com/wp-content/js/devicepx-jetpack.js?ver=201833'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/shapely\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/shapely\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"https:\/\/colorlib.com\/shapely\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=3.4.4'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/shapely\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/shapely\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.4.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/shapely\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/shapely\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_65013fbd5d1b54c33511019fbdf30268","fragment_name":"wc_fragments_65013fbd5d1b54c33511019fbdf30268"};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.4.4'></script>
<script type='text/javascript'>
		jQuery( 'body' ).bind( 'wc_fragments_refreshed', function() {
			jQuery( 'body' ).trigger( 'jetpack-lazy-images-load' );
		} );
	
</script>
<script type='text/javascript' src='https://secure.gravatar.com/js/gprofiles.js?ver=2018Augaa'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var WPGroHo = {"my_hash":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/jetpack/modules/wpgroho.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/skip-link-focus-fix.js?ver=20160115'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/masonry.min.js?ver=3.3.2'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/jquery/jquery.masonry.min.js?ver=3.1.2b'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/plugins/woocommerce/assets/js/flexslider/jquery.flexslider.min.js?ver=2.7.1'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/parallax.min.js?ver=20160115'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/owl-carousel/owl.carousel.min.js?ver=20160115'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ShapelyAdminObject = {"sticky_header":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-content/themes/shapely/assets/js/shapely-scripts.js?ver=20180423'></script>
<script type='text/javascript' src='https://cdn.colorlib.com/shapely/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://stats.wp.com/e-201833.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];

	_stq.push([ 'clickTrackerInit', '107424909', '1863' ]);
</script>

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"155b0a1326","applicationID":"62323057","transactionName":"YABaYkFQXkBZW0JYWVlKeVVHWF9dF0xTXEZbBExTHllfXl0=","queueTime":0,"applicationTime":275,"atts":"TEdZFAlKTU4=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>