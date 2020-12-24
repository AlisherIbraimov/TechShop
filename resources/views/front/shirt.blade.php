@extends('layout.main')

@section('title', 'Shirts')
@section('content')
 <!-- products listing -->
        <!-- Latest SHirts -->
        <div class="row">
            <div class="small-5 small-offset-1 columns">
                <div class="item-wrapper">
                    <div class="img-wrapper">
                        <a href="#">
                             <img src="{{url('images',$shirt->image)}}"/>
                        </a>
                    </div>
                </div>
            </div>
            <div class="small-6 columns">
                <div class="item-wrapper">
                    <h3 class="subheader">
                       <span class="price-tag">${{$shirt->price}}</span><br>
                        {{$shirt->name}}
                    </h3>
                    <p style="font-size: medium; color: black;">{{$shirt->description}}</p><br>
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Select color
                                <select>
                                    <option value="small">
                                        White
                                    </option>
                                    <option value="medium">
                                        Dark
                                    </option>
                                    <option value="large">
                                        Grey
                                    </option>
                                   
                                </select>
                            </label>
                            <a href="{{route('cart.addItem',$shirt->id)}}" class="button  expanded">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
@endsection