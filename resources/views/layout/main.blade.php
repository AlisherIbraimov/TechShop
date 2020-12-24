<!doctype html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>
            @yield('title', 'Electronic Store')
        </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="{{asset('dist/css/foundation.min.css')}}"/>
        <link rel="stylesheet" href="{{asset('dist/css/app.css')}}"/>
            @yield('css')
        <link href="http://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css" rel="stylesheet">


    </head>
    <body>
        <div  class="top-bar">
            <div style="color:white" class="top-bar-left">
                <h4 class="brand-title">
                    <a href="{{route('home')}}"><i class="fa fa-home fa-lg" aria-hidden="true"></i> Electronic Store</a>
                </h4>
            </div>
            <div class="top-bar-right">
                <ol class="menu">
                    <li>
                        <a href="{{route('products')}}">STORE</a>
                    </li>
                    <li>
                        <a href="{{route('cart.index')}}">
                            <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i>CART
                            <span class="alert badge">
                                {{Cart::count()}}
                            </span>
                        </a>
                    </li>
                    @if (Auth::guest())
                        <li>
                            <a href="/login"><i class="fa fa-sign-in fa-2x" aria-hidden="true"></i></a>
                        </li>
                    @else
                        <li>
                            <a href="/admin"><i class="fa fa-user-o fa-2x" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <a href="/logout"><i class="fa fa-sign-out fa-2x" aria-hidden="true"></i></a>
                        </li>
                    @endif
                </ol>
            </div>
        </div>
        @yield('content');

    <script src="{{asset('dist/js/vendor/jquery.js')}}"></script>
    <script type="text/javascript"  src="https://js.stripe.com/v2/"></script>
    <script type="text/javascript" src="https://js.stripe.com/v3/"></script>
    <script type="text/javascript">
        Stripe.setPublishableKey('pk_test_GrOMUKI1IiT9pHQP5HRDKWO9');
    </script>
    <script src="{{asset('dist/js/app.js')}}"></script>
    </body>
</html>
