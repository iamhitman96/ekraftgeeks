<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Ekraft Geeks</title>

    <!-- Favicon  -->
    <link rel="icon" href="{{asset('img/favicon.ico')}}">

    <!-- Core Style CSS -->

    <link rel="stylesheet" href="{{asset('css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/core-style.css')}}">
    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/jquery-ui.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('css/nouislider.css')}}">
    <link rel="stylesheet" href="{{asset('css/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('css/themify-icons.css')}}">

    {{-- <link rel="stylesheet" href="style.css"> --}}

    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">
            <script>
        function show_hide_category() {
        var x = document.getElementById("menu-content2");
        if (x.style.display === "none") {
        x.style.display = "block";
        } else {
        x.style.display = "none";
        }
        }
        </script>

        <style media="screen">
        .dropdown-submenu {
              position: relative;
              }

              .dropdown-submenu a::after {
              transform: rotate(-90deg);
              position: absolute;
              right: 6px;
              top: .8em;
              }

              .dropdown-submenu .dropdown-menu {
              top: 0;
              left: 100%;
              margin-left: .1rem;
              margin-right: .1rem;
              }

        </style>

</head>

<body>


    <div id="wrapper">
        <!-- ****** Header Area Start ****** -->
        <header class="header_area">
            <!-- Top Header Area Start -->
            <div class="top_header_area">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-end">

                        <div class="col-12 col-lg-7">
                            <div class="top_single_area d-flex align-items-center">
                                <!-- Logo Area -->
                                <div class="top_logo">
                                  <a href="/user/"><h1 style="padding-top:60px;">EKRAFT GEEKS<h1></a><br>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Top Header Area End -->
            <div class="main_header_area">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 d-md-flex justify-content-center">

                            <div class="main-menu-area" >
                                <nav class="navbar navbar-expand-lg align-items-start">

                                    <button class="navbar-toggler" type="button" style="background-color: #ff084e;color: #fff;margin-bottom: 10px;" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>

                                    <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar" >
                                        <ul class="navbar-nav animated" id="nav" style="margin-right: 60px;">
                                            <li class="nav-item active"><a class="nav-link " href="/user/">Home</a></li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Knowledge Centre</a>
                                                  @if($knowledgecenters)
                                                    {{-- HEading --}}
                                                    <ul>
                                                      <div class="dropdown-menu"  aria-labelledby="karlDropdown">
                                                        @foreach ($knowledgecenters as $know)
                                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="">{{$know->pagetype}}</a>
                                                              {{-- Title  --}}
                                                              <ul class="dropdown-menu">
                                                                @foreach ($types as $type)
                                                                  @if($type->knowledgecenter_id == $know->id)
                                                                      {{-- <li class="dropdown-menu"><a class="dropdown-item dropdown-toggle" href="df.php?id=1">{{$type->title}}</a> --}}
                                                                        @if ($type->sub1)
                                                                          <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="df.php?id=1">{{$type->title}}</a>
                                                                        @else
                                                                          <li><a class="dropdown-item" href="../basicelectronics/signals.php">{{$type->title}}</a>
                                                                        @endif
                                                                        {{-- Sub 1 --}}
                                                                            <ul class="dropdown-menu">
                                                                                  @if ($type->sub2)
                                                                                    <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">{{$type->sub1}}</a>
                                                                                  @else
                                                                                    <li><a class="dropdown-item" href="../basicelectronics/signals.php">{{$type->sub1}}</a>
                                                                                  @endif

                                                                                  {{-- Sub 2 --}}
                                                                                    <ul class="dropdown-menu">
                                                                                          @if ($type->sub3)
                                                                                            <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="#">{{$type->sub2}}</a>
                                                                                          @else
                                                                                            <li><a class="dropdown-item" href="../basicelectronics/signals.php">{{$type->sub2}}</a>
                                                                                          @endif
                                                                                            {{-- Sub 3 --}}
                                                                                              <ul class="dropdown-menu">
                                                                                                  <li><a class="dropdown-item" href="../basicelectronics/signals.php">{{$type->sub3}}</a>
                                                                                              </ul>
                                                                                            {{-- Sub 3 End --}}
                                                                                          </li>
                                                                                    </ul>
                                                                                  {{-- Sub 2 End --}}
                                                                                  </li>
                                                                            </ul>
                                                                        {{-- Sub 1 End --}}
                                                                      </li>
                                                                  @endif
                                                                @endforeach
                                                              </ul>
                                                              {{-- Title End --}}
                                                            </li>
                                                        @endforeach
                                                      </div>
                                                    </ul>
                                                    {{-- Heading end --}}
                                                  @endif
                                            </li>
                                            <li class="nav-item"><a class="nav-link" href="shop">Shop</a></li>
                                            <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
                                            <li class="nav-item"><a class="nav-link" href="#">Cart</a></li>
                                            <li class="nav-item"><a class="nav-link" href="#">My Orders</a></li>

                                            @auth
                                                  <li class="nav-item dropdown">
                                                 <a class="nav-link dropdown-toggle login-btn" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                   <i class="fa fa-user" aria-hidden="true"> {{ Auth::user()->name }} </i> <span class="caret"></span></a>
                                                 <div class="dropdown-menu" aria-labelledby="karlDropdown">
                                                     <a class="dropdown-item" href="{{ route('logout') }}"
                                                        onclick="event.preventDefault();
                                                                      document.getElementById('logout-form').submit();">
                                                         {{ __('Logout') }}</a>
                                                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                         @csrf
                                                     </form>
                                                 </div>
                                             </li>
                                        @else
                                            {{-- <li class="nav-item"><a class="nav-link" href="{{route('login')}}">Login</a></li> --}}
                                             <li class="nav-item"><a class="nav-link btn-lg close-modal" href="#" data-dismiss="modal" data-toggle="modal" data-target="#loginModal">Login</a></li>
                                  @endauth


                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <!-- Help Line -->
                            <!-- <div class="help-line">
                                <a href="tel:+346573556778"><i class="ti-headphone-alt"></i> +34 657 3556 778</a>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>

          <hr>
        </header>
      <!-- ****** Header Area End ****** -->

        <!-- ****** Header Area End ****** -->

        {{-- @if($knowledgecenters)
          <ul>
            @foreach ($knowledgecenters as $know)
              <li>{{$know->pagetype}}
                <ul>
                  @if($types)
                    @foreach ($types as $type)
                      @if($type->knowledgecenter_id == $know->id)
                        <li>{{$type->title}}</li>
                      @endif
                    @endforeach
                  @endif
                </ul>
              </li>
            @endforeach
          </ul>
        @endif --}}
{{-- <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/> --}}


          @yield('content')
        <!-- ****** Footer Area Start ****** -->
               <footer class="footer_area">
                   <div class="container">
                       <div class="row">
                           <!-- Single Footer Area Start -->
                           <div class="col-12 col-md-6 col-lg-3">
                               <div class="single_footer_area">
                                   <div class="footer-logo">
                                     <a href="#"><h2>EKRAFT GEEKS</h2></a><br>
                                    </div>
                                   {{-- <div class="copywrite_text d-flex align-items-center">
                                       <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
       Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
       <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                   </div> --}}
                               </div>
                           </div>
                           <!-- Single Footer Area Start -->
                           <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                               <div class="single_footer_area">
                                   <ul class="footer_widget_menu">
                                       <li><a href="#">About</a></li>
                                       <li><a href="#">Blog</a></li>
                                       <li><a href="#">Faq</a></li>
                                       <li><a href="#">Returns</a></li>
                                       <li><a href="#">Contact</a></li>
                                   </ul>
                               </div>
                           </div>
                           <!-- Single Footer Area Start -->
                           <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                               <div class="single_footer_area">
                                   <ul class="footer_widget_menu">
                                       <li><a href="#">My Account</a></li>
                                       <li><a href="#">Shipping</a></li>
                                       <li><a href="#">Our Policies</a></li>
                                       <li><a href="#">Afiliates</a></li>
                                   </ul>
                               </div>
                           </div>
                           <!-- Single Footer Area Start -->
                           <div class="col-12 col-lg-5">
                               <div class="single_footer_area">
                                   <div class="footer_heading mb-30">
                                       <h6>Subscribe to our newsletter</h6>
                                   </div>
                                   <div class="subscribtion_form">
                                       <form action="#" method="post">
                                           <input type="email" name="mail" class="mail" placeholder="Your email here">
                                           <button type="submit" class="submit">Subscribe</button>
                                       </form>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <div class="line"></div>

                       <!-- Footer Bottom Area Start -->
                       <div class="footer_bottom_area">
                           <div class="row">
                               <div class="col-12">
                                   <div class="footer_social_area text-center">
                                       <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                       <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                       <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                       <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </footer>
               <!-- ****** Footer Area End ****** -->
           </div>
           <!-- /.wrapper end -->
           {{-- Start Login Modal --}}
           <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" id="loginModal">
             <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                 <div class="modal-header">
                   <h5 class="modal-title" id="loginModalLabel">Login Form</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                 </div>
                 <div class="modal-body">
                   <form method="POST" action="{{ route('login') }}">
                       @csrf

                       <div class="form-group row">
                           <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }} :</label>

                           <div class="col-md-6">
                               <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                               @if ($errors->has('email'))
                                   <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('email') }}</strong>
                                   </span>
                               @endif
                           </div>
                       </div>
                       <div class="form-group row">
                           <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }} :</label>
                           <div class="col-md-6">
                               <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                               @if ($errors->has('password'))
                                   <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('password') }}</strong>
                                   </span>
                               @endif
                           </div>
                       </div>
                       <div class="form-group row mb-0">
                           <div class="col-md-8 offset-md-4">
                               <button type="submit" class="btn" style="margin-left:100px;background-color:#ff084e;color:white;">
                                   {{ __('Login') }}
                               </button>
                                <button type="reset" class="btn btn-default" style="margin-left:10px;">Cancel</button>
                                <br><br>
                                  <h6 style="color:black;">New Customer ?<a href="#" data-toggle="modal" data-target="#registerModal" data-dismiss="modal" style="margin-left:10px;margin-top:10px;color:#ff084e;">Register Here
                                </a></h6>

                           </div>
                       </div>
                   </form>
                 </div>
                 <div class="modal-footer">
                   {{-- <p>This is our modal Footer</p> --}}
                 </div>
               </div>
             </div>
           </div>


           {{-- End Login Modal --}}


           {{-- Start Register Modal --}}

           <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel1" id="registerModal">
             <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                 <div class="modal-header">
                   <h5 class="modal-title" id="registerModalLabel1">Register Form</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                 </div>
                 <div class="modal-body">
                   <form method="POST" action="{{ route('register') }}">
                       @csrf

                       <div class="form-group row">
                           <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }} :</label>

                           <div class="col-md-6">
                               <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                               @if ($errors->has('name'))
                                   <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('name') }}</strong>
                                   </span>
                               @endif
                           </div>
                       </div>

                             <div class="form-group row">
                                 <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Phone Number') }} :</label>

                                 <div class="col-md-6">
                                     <input id="phoneno" type="number" class="form-control{{ $errors->has('phoneno') ? ' is-invalid' : '' }}" name="phoneno" title="Characters are Not Allowed and Only 10 digit Numbers are allowed" pattern="[789][0-9]{9}" value="{{ old('phoneno') }}" required autofocus>

                                     @if ($errors->has('phoneno'))
                                         <span class="invalid-feedback" role="alert">
                                             <strong>{{ $errors->first('phoneno') }}</strong>
                                         </span>
                                     @endif
                                 </div>
                             </div>

                       <div class="form-group row">
                           <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }} :</label>

                           <div class="col-md-6">
                               <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                               @if ($errors->has('email'))
                                   <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('email') }}</strong>
                                   </span>
                               @endif
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }} :</label>

                           <div class="col-md-6">
                               <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                               @if ($errors->has('password'))
                                   <span class="invalid-feedback" role="alert">
                                       <strong>{{ $errors->first('password') }}</strong>
                                   </span>
                               @endif
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }} :</label>

                           <div class="col-md-6">
                               <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                           </div>
                       </div>

                       <div class="form-group row mb-0">
                           <div class="col-md-6 offset-md-4">
                               <button type="submit" class="btn" style="margin-left:50px;margin-right:20px;background-color:#ff084e;color:white;">
                                   {{ __('Register') }}
                               </button>
                                 <button type="reset" class="btn btn-default">Cancel</button>
                           </div>
                       </div>
                   </form>
                 </div>
                 <div class="modal-footer">
                   {{-- <p>This is our modal Footer</p> --}}
                 </div>
               </div>
             </div>
           </div>


           {{-- End Register Modal --}}


           <!-- jQuery (Necessary for All JavaScript Plugins) -->
           <script src="{{asset('js/jquery/jquery-2.2.4.min.js')}}"></script>
           <!-- Popper js -->
           <script src="{{asset('js/popper.min.js')}}"></script>
           <!-- Bootstrap js -->
           <script src="{{asset('js/bootstrap.min.js')}}"></script>
           <!-- Plugins js -->
           <script src="{{asset('js/plugins.js')}}"></script>
           <!-- Active js -->
           <script src="{{asset('js/active.js')}}"></script>

           {{-- <script src="{{asset('js/bootstrap2.min.js.map')}}"></script> --}}


           {{-- <script type="text/javascript">
           $('.close-modal', '#register').click(function() {
              $('#register').modal('hide');
            });
            $('.close-modal', '#login').click(function() {
              $('#login').modal('hide');
            });
           </script> --}}

           <script type="text/javascript">
          $('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
          if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
          }
          var $subMenu = $(this).next(".dropdown-menu");
          $subMenu.toggleClass('show');


          $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
            $('.dropdown-submenu .show').removeClass("show");
          });
          return false;
        });
        </script>

       </body>

       </html>
