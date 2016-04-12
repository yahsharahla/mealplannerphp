<!DOCTYPE html>
<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="{{=T.accepted_language or 'en'}}"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <!-- www.phpied.com/conditional-comments-block-downloads/ -->
    <!-- Always force latest IE rendering engine
         (even in intranet) & Chrome Frame
         Remove this if you use the .htaccess -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge{{=not request.is_local and ',chrome=1' or ''}}">
    <!--  Mobile Viewport Fix
          j.mp/mobileviewport & davidbcalhoun.com/2010/viewport-metatag
          device-width: Occupy full width of the screen in its current orientation
          initial-scale = 1.0 retains dimensions instead of zooming out if page height > device height
          user-scalable = yes allows the user to zoom in -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{=response.title or request.application}}</title>
    <!-- http://dev.w3.org/html5/markup/meta.name.html -->
    <meta name="application-name" content="{{=request.application}}">
    <!-- Speaking of Google, don't forget to set your site up:
         http://google.com/webmasters -->
    <meta name="google-site-verification" content="">
    <!-- include stylesheets -->
    <link rel="stylesheet" href="{{=URL('static','css/bootstrap.min.css')}}"/>
    <link rel="stylesheet" href="{{=URL('static','css/web2py-bootstrap3.css')}}"/>
    <link rel="stylesheet" href="{{=URL('static','css/custom.css')}}"/>
    <link rel="shortcut icon" href="{{=URL('static','images/favicon.ico')}}" type="image/x-icon">
    <link rel="apple-touch-icon" href="{{=URL('static','images/download.png')}}">
    <!-- All JavaScript at the bottom, except for Modernizr which enables
         HTML5 elements & feature detects -->
    <script src="{{=URL('static','js/modernizr-2.8.3.min.js')}}"></script>
    <!--[if lt IE 9]>
        <script src="{{=URL('static','js/respond-1.4.2.min.js')}}"></script>
        <![endif]-->
    <!-- Favicons -->
    {{include 'web2py_ajax.html'}} <!-- this includes jquery.js, calendar.js/.css and web2py.js -->
    {{block head}}{{end}}
    {{
    # using sidebars need to know what sidebar you want to use
    mc0 = 'col-md-12'
    mc1 = 'col-md-9'
    mc2 = 'col-md-6'
    left_sidebar_enabled = globals().get('left_sidebar_enabled', False)
    right_sidebar_enabled = globals().get('right_sidebar_enabled', False)
    middle_column = {0: mc0, 1: mc1, 2: mc2}[
    (left_sidebar_enabled and 1 or 0)+(right_sidebar_enabled and 1 or 0)]
    }}
  </head>
  <body>
    <!--[if lt IE 8]><p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p><![endif]-->
    <div class="w2p_flash alert alert-dismissable">{{=response.flash or ''}}</div>
    <!-- Navbar ======================================= -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          {{=response.logo or ''}}
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav navbar-right">
            {{='auth' in globals() and auth.navbar('Welcome',mode='dropdown') or ''}}
          </ul>
          {{if response.menu:}}
          {{=MENU(response.menu, _class='nav navbar-nav',li_class='dropdown',ul_class='dropdown-menu')}}
          {{pass}}
        </div>
      </div>
    </nav>
    <!-- Masthead ===================================== -->    
    {{block header}}
    {{end}}
    <!-- Main ========================================= -->
    <!-- Begin page content -->
    <div class="container-fluid main-container">
      {{if left_sidebar_enabled:}}
        <div class="col-md-3 left-sidebar">
            {{block left_sidebar}}
            <h3>Left Sidebar</h3>
            <p></p>
            {{end}}
        </div>
      {{pass}}

      <div class="{{=middle_column}}">
        {{block center}}
        {{include}}
        {{end}}
      </div>

      {{if right_sidebar_enabled:}}
        <div class="col-md-3">
            {{block right_sidebar}}
            <h3>Right Sidebar</h3>
            <p></p>
            {{end}}
        </div>
      {{pass}}

    </div>

    {{block footer}} <!-- this is default footer -->      
    <footer class="footer">
      <div class="container-fluid">
        <div class="copyright pull-left">{{=T('Copyright')}} &#169; {{=request.now.year}}</div>
          <div id="poweredBy" class="pull-right">
            {{=T('Powered by')}}
            <a href="http://www.web2py.com/">cheffinz</a>
          </div>
      </div>
    </footer>
    {{end}}
    <!-- The javascript =============================== -->
    <script src="{{=URL('static','js/bootstrap.min.js')}}"></script>
    <script src="{{=URL('static','js/web2py-bootstrap3.js')}}"></script>
    {{block page_js}}{{end page_js}}
    {{if response.google_analytics_id:}}
    <!-- Analytics ==================================== -->
    <script src="{{=URL('static','js/analytics.min.js')}}"></script>
    <script type="text/javascript">
      analytics.initialize({
      'Google Analytics':{trackingId:'{{=response.google_analytics_id}}'}
      });
    </script>
    {{pass}}
    <!-- Share ============================y============ -->
    <script src="{{=URL('static','js/share.js',vars=dict(static=URL('static','images')))}}"></script>
  </body>
</html>
