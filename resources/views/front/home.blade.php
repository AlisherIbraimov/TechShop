@extends('layout.main')

@section('content')
<div class="banner">
    <div class="container">
        <h3>Electronic Store, <span>Special Offers</span></h3>
    </div>
</div>
        <br/>
        <div class="subheader text-center">
            <h2>Latest Products</h2>
        </div>
       
        <!-- Latest Products -->
        <div class="row">
        @forelse($products->chunk(4) as $chunk)
         @foreach($chunk as $product)
            <div class="small-3 columns">
                <div class="item-wrapper">
                    <div class="img-wrapper">
                        <a href="{{route('cart.addItem',$product->id)}}" class="button expanded add-to-cart">
                            Add to Cart
                        </a>
                        <a href="{{route('product',$product->id)}}">
                            <img src="{{url('images',$product->image)}}"/>
                        </a>
                    </div>
                    <a href="{{route('product',$product->id)}}">
                        <h3>
                            {{$product->name}}
                        </h3>
                    </a>
                    <h5>
                        ${{$product->price}}
                    </h5>
                    <p>
                        {{$product->description}}
                    </p>
                </div>
            </div>
            @endforeach
        @empty
            <h4>No Products</h4>
            
        @endforelse
        </div>
@endsection