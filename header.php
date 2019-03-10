{{-- <!-- Top Header Area End -->

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
                                  <a href="/user/"><h1 style="padding-top:60px;margin-left:15px;">EKRAFT GEEKS<h1></a><br>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>


<div class="main_header_area">
    <div class="container h-100">
        <div class="row h-100">
            <div class="col-12 d-md-flex justify-content-between">
                <!-- Header Social Area -->
                <div class="header-social-area">
                    <a href="#"><span ></span> <i class="" aria-hidden="true"></i></a>
                    <a href="#"><i class="" aria-hidden="true"></i></a>
                    <a href="#"><i class="" aria-hidden="true"></i></a>
                    <a href="#"><i class="" aria-hidden="true"></i></a>
                </div>
                <!-- Menu Area -->
                <div class="main-menu-area">
                    <nav class="navbar navbar-expand-lg align-items-start">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation" style="margin-top: -78px;">
                        <span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>
                        <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
                            <ul class="navbar-nav animated" id="nav">
                                <li class="nav-item active"><a class="nav-link" href="/user/">Home</a></li>
                                <li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Knowledge Centre</a>
                                  <ul>
                                        <div class="dropdown-menu"  aria-labelledby="karlDropdown">
                                          @if(isset($knowledgecenters))
                                            @foreach ($knowledgecenters as $know)
                                        <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" href="">{{$know->pagetype}}</a>
                                        @endforeach
                                        @endif
                                        <ul class="dropdown-menu">
                                          <li></li>
                                        </ul>
                                          </li>
                                    </div>
                                  </ul>
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
                                {{-- <li class="nav-item"><a class="nav-link btn-lg close-modal" href="#" data-dismiss="modal" data-toggle="modal" data-target="#loginModal">Login</a></li>
                      @endauth
                            </ul>
                        </div>
                    </nav>
                </div> --}}
                <!-- Help Line -->
                {{-- <div>
                   <a><i></i></a>
                </div>
            </div>
        </div>
    </div>
</div>  --}}
