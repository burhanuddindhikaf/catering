<!DOCTYPE html>
<html lang="en" dir="ltr">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/images/short.jpg') }}">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <title>Midway Dine - Your Favourite Foods</title>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css')}}">

    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/css-library.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/owl-carousel.css')}}">

    <link rel="stylesheet" href="{{ asset('assets/css/lightbox.css')}}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <script src="{{ asset('assets/js/angular.min.js')}}"></script>
    <script src="{{ asset('assets/js/bKash-checkout.js')}}"></script>
    <script src="{{ asset('assets/js/bKash-checkout-sandbox.js')}}"></script>

    </head>

    <body ng-app="">

    <!-- ***** Preloader Start ***** -->
    {{-- <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>   --}}
    <!-- ***** Preloader End ***** -->


    <!-- ***** Header Area Start ***** -->
    <header class="header-area" style="z-index:1000">
        <div class="container">
            <nav>
                <!-- Checkbox for toggling menu -->
                <input type="checkbox" id="check">
                <!-- Menu icon -->
                <label for="check" class="checkbtn">
                  <i class="fas fa-bars"></i>
                </label>
                <!-- Site logo -->
                <label class="logo"><img width="100px" src="{{ asset('assets/images/logo.png')}}"></label>
                <!-- Navigation links -->
                <ul >
                    <li class=""><a href="/">Beranda</a></li>
                    <li class=""><a href="/#about">Tentang Kami</a></li>

                    <li class=""><a href="/menu">Menu</a></li>

                    {{-- <li class=""><a href="/trace-my-order">Trace Order</a></li> --}}

                    <li class=""><a href="/my-order">Pesanan Saya</a></li>

                    {{-- <li class=""><a href="/#chefs">Chefs</a></li> --}}
                    <li class=""><a href="/#reservation">Hubungi Kami</a></li>
                    <li>
                        <div>
                        <a href="/cart"><i class="fa fa-shopping-cart"></i></a>


                    <?php

                        if(Auth::user())
                        {

                            $cart_amount=DB::table('carts')->where('user_id',Auth::user()->id)->where('product_order','no')->count();


                        }
                        else
                        {

                            $cart_amount=0;

                        }


                    ?>


                    <span class='badge badge-warning' id='lblCartCount'> {{ $cart_amount }} </span>
                </div></li>
                    <li>
                        @if (Route::has('login'))
                        <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block ">
                            @auth
                                <li style="margin-top:-13px;">
                                    <x-app-layout> </x-app-layout>
                                </li>
                            @else
                              <li>
                                <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Log in</a>
                              </li>
                                @if (Route::has('register'))
                                    <li><a href="{{ route('register') }}" class=" text-sm text-gray-700 underline">Register</a> </li>
                                @endif
                            @endauth
                        </div>
                        @endif
                    </li>
                </ul>
              </nav>
        </div>
        <style>
          @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
* {
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
}
body {
  font-family: "Montserrat", sans-serif;
}
nav {
  height: 90px;
  width: 100%;
  justify-content: space-between;
}
label.logo {
  color: black;
  font-size: 25px;
  line-height: 80px;
  padding: 0 30px;
  font-weight: bold;
}
nav ul {
  float: right;
  margin-right: 20px;
  z-index: 1000;
}
nav ul li {
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}
nav ul li a {
  color: black;
  font-size: 10px;
  padding: 5px 10px;
  border-radius: 3px;
  text-transform: uppercase;
}
a.active,
a:hover {
  background: #1b9bff;
  transition: .5s;
}
.checkbtn {
  font-size: 22px;
  color: black;
  float: right;
  line-height: 80px;
  margin-right: 30px;
  cursor: pointer;
  display: none;
}
#check {
  display: none;
}

#top {
    padding-top: 10px;
    background-color: #fb5849
}

/* @media (max-width: 1200px) {
  label.logo {
    padding-left: 30px;
  }
  nav ul li a {
    font-size: 16px;
  }
} */
/* Responsive media query code for small screen */
@media (max-width: 1024px) {
  .checkbtn {
    display: block;
  }
  label.logo {
    font-size: 22px;
  }
  ul {
    position: absolute;
 /* Sesuaikan lebar menu */
     /* Biarkan menu mengambil tinggi penuh layar */
    background: #fb5849;
    top: 90px; /* Menu dimulai dari atas layar */
    left: -120%; /* Posisi awal di luar layar */
    text-align: left; /* Teks rata kiri */
    padding: 20px; /* Tambahkan padding agar terlihat rapi */
    transition: all 0.5s ease;
  }
  nav ul li {
    display: block;
    margin: 10px 0; /* Beri jarak antar item */
    line-height: 30px;
  }
  nav ul li a {
    font-size: 20px;
    color: white;
  }
  a:hover,
  a.active {
    background: none;
    color: #0082e6;
  }
  #check:checked~ul {
    left: 0; /* Tampilkan menu di kiri layar */
  }
}

section {
  background: url("bg.jpg") no-repeat;
  background-size: cover;
  height: calc(100vh - 80px);
}
        </style>
    </header>
    <!-- ***** Header Area End ***** -->

    <div style="min-height:750px">
        @yield('page-content')
    </div>

    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                <li><a href="https://web.facebook.com/rahathosenmanik/"><i class="fa fa-whatsapp"></i></a></li>
                                <li><a href="https://twitter.com/rahathosenmanik"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.linkedin.com/in/rahathossenmanik/"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="https://www.instagram.com/rahathossenmanik/?hl=en"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="logo">
                        <a href="{{url('home')}}"><img src="{{ asset('assets/images/logo.png')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="left-text-content">
                        <p>© Copyright Novi Catering
							<br>Sejak 2022</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="{{ asset('assets/js/jquery-2.1.0.min.js')}}"></script>

    <!-- Bootstrap -->
    <script src="{{ asset('assets/js/popper.js')}}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js')}}"></script>

    <!-- Plugins -->
    <script src="{{ asset('assets/js/owl-carousel.js')}}"></script>
    <script src="{{ asset('assets/js/accordions.js')}}"></script>
    <script src="{{ asset('assets/js/datepicker.js')}}"></script>
    <script src="{{ asset('assets/js/scrollreveal.min.js')}}"></script>
    <script src="{{ asset('assets/js/waypoints.min.js')}}"></script>
    <script src="{{ asset('assets/js/jquery.counterup.min.js')}}"></script>
    <script src="{{ asset('assets/js/imgfix.min.js')}}"></script>
    <script src="{{ asset('assets/js/slick.js')}}"></script>
    <script src="{{ asset('assets/js/lightbox.js')}}"></script>
    <script src="{{ asset('assets/js/isotope.js')}}"></script>

    <!-- Global Init -->
    <script src="{{ asset('assets/js/custom.js')}}"></script>
    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);

            });
        });

    </script>
  </body>
</html>
