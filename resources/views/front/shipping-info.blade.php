@extends('layout.main')

@section('content')
    <br>
<div class="row">
    <div class="small-6 small-centered columns">
        <h2>Shipping Info</h2>
        {!! Form::open(['route' => 'address.store', 'method' => 'post']) !!}

        <div class="fadeIn">
            {{ Form::label('addressline', 'Address Line') }}
            {{ Form::text('addressline', null, array('class' => 'fadeIn')) }}
            @if ($errors->has('addressline'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('addressline') }}</h6>
                </span>
            @endif
        </div>

        <div class="fadeIn">
            {{ Form::label('city', 'City') }}
            {{ Form::text('city', null, array('class' => 'fadeIn')) }}
            @if ($errors->has('city'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('city') }}</h6>
                </span>
            @endif
        </div>
        <div class="fadeIn">
            {{ Form::label('state', 'State') }}
            {{ Form::text('state', null, array('class' => 'fadeIn')) }}
            @if ($errors->has('state'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('state') }}</h6>
                </span>
            @endif
        </div>
        <div class="fadeIn">
            {{ Form::label('zip', 'Zip') }}
            {{ Form::text('zip', null, array('class' => 'form-control')) }}
            @if ($errors->has('zip'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('zip') }}</h6>
                </span>
            @endif
        </div>
        <div class="fadeIn">
            {{ Form::label('country', 'Country') }}
            {{ Form::text('country', null, array('class' => 'fadeIn')) }}
            @if ($errors->has('country'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('country') }}</h6>
                </span>
            @endif
        </div>
        <div class="fadeIn">
            {{ Form::label('phone', 'Phone') }}
            {{ Form::text('phone', null, array('class' => 'fadeIn')) }}
            @if ($errors->has('phone'))
                <span class="help-block">
                    <h6 style="color:red">{{ $errors->first('phone') }}</h6>
                </span>
            @endif
        </div>

        {{ Form::submit('Proceed to Payment', array('class' => 'button success')) }}
        {!! Form::close() !!}

    </div>


</div>


@endsection