@extends('layouts.app')

@section('content')
<div class="container" style="padding-top:40px">
    <div class="w3l_logo">
        <h1><a href="/">Electronic Store<span>Your stores. Your place.</span></a></h1>
    </div>
    <div class="wrapper fadeInDown">
        <div id="formContent"><br>
            <h2>Log in</h2><br>
            <form class="form-horizontal" role="form" method="POST" action="{{ route('login') }}">
                {{ csrf_field() }}
                <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                    <div class="col-md-12">
                        <input id="email" type="email" class="fadeIn first" name="email" value="{{ old('email') }}" placeholder="Email" required autofocus>

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                    <div class="col-md-12">
                        <input id="password" type="password" class="fadeIn first" name="password" placeholder="Password" required>

                        @if ($errors->has('password'))
                            <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                        @endif
                    </div>
                </div>
                <input type="submit" class="fadeIn first" value="Sign in">
            </form>
            <div id="formFooter">
                <a class="underlineHover" href="{{ route('register') }}">Don't have an account?</a>
            </div>
        </div>
    </div>
</div>
@endsection
