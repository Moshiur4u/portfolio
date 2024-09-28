
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Linoor - DIgital Agency HTML Template | Home 04</title>
    <!-- Stylesheets -->
    <link rel="preconnect" href="https://fonts.gstatic.com/">
    <link
        href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&amp;family=Teko:wght@300;400;500;600;700&amp;display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="{{asset('frontend_assets/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/fontawesome-all.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/owl.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/flaticon.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/linoor-icons-2.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/jquery-ui.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/jquery.fancybox.min.css')}}" rel="stylesheet">
    <link href="{{asset('frontend_assets/css/hover.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('frontend_assets/css/jarallax.css')}}">
    <link href="{{asset('frontend_assets/css/custom-animate.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('frontend_assets/css/swiper.min.css')}}">
    <link href="{{asset('frontend_assets/css/style.css')}}" rel="stylesheet">
    <!-- rtl css -->
    <link href="{{asset('frontend_assets/css/rtl.css')}}" rel="stylesheet">
    <!-- Responsive File -->
    <link href="{{asset('frontend_assets/css/responsive.css')}}" rel="stylesheet">

    <!-- variable update -->
    <link rel="stylesheet" href="{{asset('frontend_assets/css/variables/index-4.css')}}">
    <!-- Color css -->
    <link rel="stylesheet" id="jssDefault" href="{{asset('frontend_assets/css/colors/color-7.css')}}">


    <link rel="shortcut icon" href="{{asset('frontend_assets/images/favicon.png')}}" id="fav-shortcut" type="image/x-icon">
    <link rel="icon" href="{{asset('frontend_assets/images/favicon.png')}}" id="fav-icon" type="image/x-icon">

    <!-- Responsive Settings -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
</head>

<body>

    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader">
            <div class="icon"></div>
        </div>

        <!-- Main Header -->
        <header class="main-header header-style-one header-style-seven">
            <div class="topbar-four">
                <div class="auto-container">
                    <p>Welcome to Creative Buinsess Agency.</p>
                    <div class="right-content">
                        <div class="phone">
                            <span class="icon flaticon-call"></span><a href="tel:666888000">666 888
                                000</a>
                        </div><!-- /.phone -->
                        <ul class="list-unstyled social-links">
                            @php
                                $socials = App\Models\Social::where('status', 1)->get();
                            @endphp
                            @foreach($socials as $social)
                            <li><a href="{{$social->link}}" target="_blank" style="font-family:fontawesome"><span class="{{$social->icon}}"></span></a></li>
                            @endforeach
                            {{-- <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                            <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                            <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li> --}}
                        </ul><!-- /.social-links -->
                    </div><!-- /.right-content -->
                </div><!-- /.auto-container -->
            </div><!-- /.topbar -->
            <!-- Header Upper -->
            <div class="header-upper">
                <div class="inner-container clearfix">
                    <div class="auto-container">
                        <!--Logo-->
                        @php
                        $header_logo =  App\Models\logo::where('location', 1)->get();
                        @endphp
                        <div class="logo-box">
                            <div class="logo"><a href="index.html" title="Linoor - DIgital Agency HTML Template"><img
                                        src="{{asset('uploads/logo')}}/{{$header_logo ->first()->logo }}" id="thm-logo"
                                        alt="Linoor - DIgital Agency HTML Template"
                                        title="Linoor - DIgital Agency HTML Template"></a></div>
                        </div>
                        <div class="nav-outer clearfix">
                            <!--Mobile Navigation Toggler-->
                            <div class="mobile-nav-toggler"><span class="icon flaticon-menu-2"></span><span
                                    class="txt">Menu</span></div>

                            <!-- Main Menu -->
                            <nav class="main-menu navbar-expand-md navbar-light">
                                <ul class="navigation clearfix">
                                    <li class="dropdown megamenu megamenu-clickable megamenu-clickable--toggler">
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="about.html">About Us</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="services.html">Services</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="portfolio.html">Portfolio</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                    </div><!-- /.auto-container -->

                </div>
            </div>
            <!--End Header Upper-->

        </header>
        <!-- End Main Header -->

        <!--Mobile Menu-->
        <div class="side-menu__block">


            <div class="side-menu__block-overlay custom-cursor__overlay">
                <div class="cursor"></div>
                <div class="cursor-follower"></div>
            </div><!-- /.side-menu__block-overlay -->
            <div class="side-menu__block-inner ">
                <div class="side-menu__top justify-content-end">

                    <a href="#" class="side-menu__toggler side-menu__close-btn"><img src="{{asset('frontend_assets/images/icons/close-1-1.png')}}"
                            alt=""></a>
                </div><!-- /.side-menu__top -->


                <nav class="mobile-nav__container">
                    <!-- content is loading via js -->
                </nav>
                <div class="side-menu__sep"></div><!-- /.side-menu__sep -->
                <div class="side-menu__content">
                    <p>Linoor is a premium Template for Digital Agencies, Start Ups, Small Business and a wide range of
                        other agencies.</p>
                    <p><a href="mailto:needhelp@linoor.com">needhelp@linoor.com</a> <br> <a href="tel:888-999-0000">888
                            999 0000</a></p>
                    <div class="side-menu__social">
                        @foreach($socials as $social)
                            <li><a href="{{$social->link}}" target="_blank" style="font-family:fontawesome"><span class="{{$social->icon}}"></span></a></li>
                        @endforeach
                        {{-- <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-pinterest-p"></i></a> --}}
                    </div>
                </div><!-- /.side-menu__content -->
            </div><!-- /.side-menu__block-inner -->
        </div><!-- /.side-menu__block -->

            @yield('content')

        <!-- Main Footer -->
        <footer class="main-footer__three">
            <div class="bottom-footer">
                <div class="auto-container">
                    <div class="left-content">
                        @php
                            $footer_logo =  App\Models\logo::where('location', 2)->get();
                        @endphp
                        <a href="index-main.html">
                            <img src="{{asset('uploads/logo')}}/{{ $footer_logo->first()->logo}}" width="134" height="34" alt="">
                        </a>
                        <p>© Copyright 2022 by Layerdrops.com</p>
                    </div><!-- /.left-content -->
                    <ul class="list-unstyled social-links">
                        @foreach($socials as $social)
                            <li><a href="{{$social->link}}" target="_blank" style="font-family:fontawesome"><span class="{{$social->icon}}"></span></a></li>
                        @endforeach
                        {{-- <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                        <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                        <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li> --}}
                    </ul><!-- /.social-links -->
                </div><!-- /.auto-container -->
            </div><!-- /.bottom-footer -->
        </footer><!-- /.main-footer__three -->

    </div>
    <!--End pagewrapper-->

    <a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>

    <script src="{{asset('frontend_assets/js/jquery.js')}}"></script>
    <script src="{{asset('frontend_assets/js/popper.min.js')}}"></script>
    <script src="{{asset('frontend_assets/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('frontend_assets/js/TweenMax.js')}}"></script>
    <script src="{{asset('frontend_assets/js/jquery-ui.js')}}"></script>
    <script src="{{asset('frontend_assets/js/jquery.fancybox.js')}}"></script>
    <script src="{{asset('frontend_assets/js/owl.js')}}"></script>
    <script src="{{asset('frontend_assets/js/mixitup.js')}}"></script>
    <script src="{{asset('frontend_assets/js/appear.js')}}"></script>
    <script src="{{asset('frontend_assets/js/wow.js')}}"></script>
    <script src="{{asset('frontend_assets/js/jQuery.style.switcher.min.js')}}"></script>
    <script type="text/javascript" src="../../cdnjs.cloudflare.com/ajax/libs/js-cookie/2.1.2/js.cookie.min.js">
    </script>
    <script src="{{asset('frontend_assets/js/jquery.easing.min.js')}}"></script>
    <script src="{{asset('frontend_assets/js/jarallax.min.js')}}"></script>
    <script src="{{asset('frontend_assets/js/swiper.min.js')}}"></script>
    <script src="{{asset('frontend_assets/js/custom-script.js')}}"></script>

    <script src="{{asset('frontend_assets/js/lang.js')}}"></script>
    <script src="../../translate.google.com/translate_a/elementa0d8.js?cb=googleTranslateElementInit"></script>
    <script src="{{asset('frontend_assets/js/color-switcher.js')}}"></script>
</body>
</html>
