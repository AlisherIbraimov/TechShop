@extends('layout.main')

@section('title', 'Products')
@section('content')
        <div class="row">
            @forelse($products as $product)
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

            @empty
            <h3>No Products</h3>
            @endforelse
        </div>
</body>
@endsection