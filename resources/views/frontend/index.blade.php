@extends('frontend.master')

@section('content')
        <section class="banner-section-four">

            <!-- If we need navigation buttons -->
            <div class="banner-section-four__nav">
                <div class="swiper-button-prev" id="banner-section-four__swiper-button-next"><i
                        class="fa fa-angle-up"></i>
                </div>
                <div class="swiper-button-next" id="banner-section-four__swiper-button-prev"><i
                        class="fa fa-angle-down"></i></div>
            </div><!-- /.banner-section-four__nav -->
            <div class="swiper-container thm-swiper__slider" data-swiper-options='{
                "slidesPerView": 1,
                "loop": true,
                "effect": "fade",
                "autoplay": {
                    "delay": 5000
                },
                "navigation": {
                    "nextEl": "#banner-section-four__swiper-button-next",
                    "prevEl": "#banner-section-four__swiper-button-prev"
                }
            }'>
                <div class="swiper-wrapper">
                    @foreach ($banners as  $banner)
                    <div class="swiper-slide">
                        <div class="image-layer"
                            style="background-image: url( {{asset('uploads/banner')}}/{{ $banner->image }}">
                        </div>
                        <!-- /.image-layer -->
                        <div class="auto-container">
                            <div class="row">
                                <div class="col-xl-7 col-lg-7">
                                    <h2>{{ $banner->title}}</h2>

                                    <p>{{ $banner->description }}</p>
                                    <a href="#" class="theme-btn btn-style-three">Discover More</a>
                                    <!-- /.thm-btn dynamic-radius -->
                                </div><!-- /.col-lg-7 text-right -->
                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.swiper-slide -->
                    @endforeach
                </div><!-- /.swiper-wrapper -->


            </div><!-- /.swiper-container thm-swiper__slider -->
        </section><!-- /.banner-section-four -->

        <!-- service section -->
        <section class="service-block-three">
            <div class="auto-container">
                <div class="row">
                    @foreach ($services as $service)
                    <div class="col-sm-12 col-md-6 col-lg-4 wow fadeInLeft" data-wow-delay="0ms"
                        data-wow-duration="1500ms">
                        <div class="service-block-three__single">
                            <div class="icon-box"><img width="70" src="{{asset('uploads/service')}}/{{$service->icon}}"></div>
                            <h6><a href="{{route('service.details', $service->id)}}">{{$service->title}}</a></h6>
                        </div><!-- /.service-block-three__single -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    @endforeach
                </div><!-- /.row -->
            </div><!-- /.auto-container -->
        </section><!-- /.service-block-three -->

        <!-- about section -->
        <section class="about-section-three">
            <div class="auto-container">
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="about-section-three__image">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/about-1-1.jpg')}}" alt="">
                        </div><!-- /.about-section-three__image -->
                    </div><!-- /.col-md-12 -->
                    <div class="col-md-12 col-lg-6">
                        <div class="about-section-three__content">
                            <div class="sec-title-two text-left">
                                <p>welcome to business agency</p>
                                <h2>The Right People for
                                    your Business</h2>
                            </div><!-- /.sec-title-two -->
                            <div class="about-section-three__summery">
                                <p>There are many variations of passages of available but the majority have suffered
                                    alteration in some form, by injected humou or randomised words which don look even
                                    slightly believable.</p>
                            </div><!-- /.about-section-three__summery -->
                            <ul class="list-unstyled about-section-three__list">
                                <li>
                                    <i class="fa fa-check-circle"></i>
                                    If you are going to use a passage
                                </li>
                                <li>
                                    <i class="fa fa-check-circle"></i>
                                    Lorem Ipsum is not simply random text
                                </li>
                                <li>
                                    <i class="fa fa-check-circle"></i>
                                    Making this the first true generator on the Internet
                                </li>
                            </ul><!-- /.list-unstyled about-section-three__list -->
                            <div class="progress-box">
                                <div class="bar-title">Bussiness Success</div>
                                <div class="bar">
                                    <div class="bar-inner count-bar" data-percent="70%">
                                        <div class="count-box">
                                            <span class="count-text" data-stop="70" data-speed="1500">0</span>%
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="about-section-three__name">
                                <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/signture-1-1.png')}}" alt="">
                                <h3>William Smith</h3>
                                <p>Co Founder</p>
                            </div><!-- /.about-section-three__name -->
                        </div><!-- /.about-section-three__content -->
                    </div><!-- /.col-md-12 col-lg-6 -->
                </div><!-- /.row -->
            </div><!-- /.auto-container -->
        </section><!-- /.about-section-three -->

        <!-- gallery section -->
        <section class="gallery-block-three">
            <div class="auto-container">
                <div class="sec-title-two text-center">
                    <p>What We did</p>
                    <h2>Latest Projects</h2>
                </div><!-- /.sec-title-two -->
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-1.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-2.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-3.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-4.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-5.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                    <div class="col-sm-12 col-md-6 col-lg-4">
                        <div class="gallery-item-three">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/projects/project-1-6.jpg')}}" alt="">
                            <div class="gallery-item-three__content">
                                <p>Project List</p>
                                <h3><a href="portfolio-single.html">Substantial
                                        Growth</a></h3>
                            </div><!-- /.gallery-item-three__content -->
                        </div><!-- /.gallery-item-three -->
                    </div><!-- /.col-sm-12 col-md-6 col-lg-4 -->
                </div><!-- /.row -->
            </div><!-- /.auto-container -->
        </section><!-- /.gallery-block-three -->

        <!-- live section -->
        <section class="live-section-two jarallax" data-jarallax data-speed="0.3" data-imgPosition="50% 80%">
            <img src="{{asset('frontend_assets/images/update-1-12-2020/background/video-bg-1-1.jpg')}}" alt="" class="jarallax-img">
            <div class="auto-container">
                <div class="sec-title-two">
                    <p>Client Testimonials</p>
                    <h2>We’re Delivering only
                        Expectional Quality
                        Work</h2>
                </div><!-- /.sec-title-two -->
                <div class="button-block">
                    <a href="https://www.youtube.com/watch?v=Get7rqXYrbQ" class="lightbox-image">
                        <div class="icon"><span class="flaticon-play-button-1"></span></div>
                    </a>
                </div><!-- /.button-block -->
            </div><!-- /.auto-container -->
        </section><!-- /.live-section -->

        <div class="sponsors-section-three">
            <div class="auto-container">
                <div class="thm-swiper__slider swiper-container" data-swiper-options='{"spaceBetween": 140, "slidesPerView": 5, "autoplay": { "delay": 5000 }, "breakpoints": {
                "0": {
                    "spaceBetween": 30,
                    "slidesPerView": 2
                },
                "375": {
                    "spaceBetween": 30,
                    "slidesPerView": 2
                },
                "575": {
                    "spaceBetween": 30,
                    "slidesPerView": 3
                },
                "767": {
                    "spaceBetween": 50,
                    "slidesPerView": 4
                },
                "991": {
                    "spaceBetween": 50,
                    "slidesPerView": 5
                },
                "1199": {
                    "spaceBetween": 100,
                    "slidesPerView": 5
                }
            }}'>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                        <div class="swiper-slide">
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/client-1.png')}}" alt="">
                        </div><!-- /.swiper-slide -->
                    </div><!-- /.swiper-wrapper -->
                </div><!-- /.thm-swiper__slider -->
            </div><!-- /.auto-container -->
        </div><!-- /.sponsors-section-three -->

        <!-- testimonials section -->
        <section class="testi-block-three">
            <div class="auto-container">
                <div class="sec-title-two text-center">
                    <p>Client Testimonials</p>
                    <h2>What They’re Saying</h2>
                </div><!-- /.sec-title-two -->
                <div class="row">
                    <div class="col-md-12 col-lg-4">
                        <div class="testi-block-three__single">
                            <div class="testi-block-three__top">
                                <p>There are many variations of passages of lorem ipsum but the majority have alteration
                                    in some form, by injected randomised words look.</p>
                            </div><!-- /.testi-block-three__top -->
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/testi-1-1.png')}}" alt="">
                            <h3>Mike Hardson</h3>
                            <span>customer</span>
                        </div><!-- /.testi-block-three__single -->
                    </div><!-- /.col-md-12 col-lg-4 -->
                    <div class="col-md-12 col-lg-4">
                        <div class="testi-block-three__single">
                            <div class="testi-block-three__top">
                                <p>There are many variations of passages of lorem ipsum but the majority have alteration
                                    in some form, by injected randomised words look.</p>
                            </div><!-- /.testi-block-three__top -->
                            <img src="{{asset('frontend_assets/images/update-1-12-2020/resources/testi-1-2.png')}}" alt="">
                            <h3>Mike Hardson</h3>
                            <span>customer</span>
                        </div><!-- /.testi-block-three__single -->
                    </div><!-- /.col-md-12 col-lg-4 -->
                    <div class="col-md-12 col-lg-4">
                        <div class="testi-block-three__single">
                            <div class="testi-block-three__top">
                                <p>There are many variations of passages of lorem ipsum but the majority have alteration
                                    in some form, by injected randomised words look.</p>
                            </div><!-- /.testi-block-three__top -->
                            <img src="images/update-1-12-2020/resources/testi-1-3.png" alt="">
                            <h3>Mike Hardson</h3>
                            <span>customer</span>
                        </div><!-- /.testi-block-three__single -->
                    </div><!-- /.col-md-12 col-lg-4 -->
                </div><!-- /.row -->
            </div><!-- /.auto-container -->
        </section><!-- /.testi-block-three -->


@endsection
