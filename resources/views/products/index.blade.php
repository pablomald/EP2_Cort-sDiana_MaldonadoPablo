@extends('layouts.app')
@section('content')
<div class="container">
  <button type="button" class="btn btn-info btn-lg"
  data-toggle="modal" data-target="#myModal" >
  <span class="glyphicon glyphicon-shopping-cart"> Ver Carrito
  </span>
  </button>
  <br>
  <br>
  <div class="modal fade" id="myModal" role="dialog">
   <div class="modal-dialog">

     <!-- Modal content-->
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
         <h4 class="modal-title">Carrito de compras</h4>
         @if($shopping_carts)
           @foreach($shopping_carts as $cart)
           <label>{{$cart->product_name}}</label>
           <label>     $: </label>
           <label>{{$cart->product_price}}</label>
           <label>     Cant: </label>
           <label>{{$cart->qty}}</label>
           <br>
           @endforeach
         @endif
       </div>
       <div class="modal-body">
         <h2>Total</h2>
         <h2>{{$total}}</h2>
       </div>
       <div class="modal-footer">
         {!!Form::open(['url'=>'/comprar','method' =>'POST','class'=>'inline-block'])!!}
        
         <input type="hidden" name="cliente_id" value="{{Auth::user()->id()}}">
         <button class="col-xs-12 btn btn-success"><a style="color: white;")}} >Comprar</a></button>
         {!!Form::Close()!!}
         <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
       </div>
     </div>

   </div>
 </div>
  <br>
  @foreach($products as $product)
  <div class="col-sm-4">
    <center>
      <h4>{{$product->nombre}}</h4>
      <h5>{{$product->descripcion}}</h5>
      <h5>{{$product->precio}}</h5>
      <img style="width: 100; height: 300px ;"  class="col-xs-12" src="/images/products/{{$product->image}}" alt="img-responsive" />
      <br>
      {!!Form::open(['url'=>'/shopping_carts/','method'=>'POST','class'=>'inline-block']) !!}
      <div class="col-xs-12">
      <input type="hidden" name="product_id" value="{{$product->id}}">
      <input type="hidden" name="product_name" value="{{$product->nombre}}">
      <input type="hidden" name="product_price" value="{{$product->precio}}">
      <input type="hidden" name="product_description" value="{{$product->descripcion}}">
      <br>
      <label>Ingresa la cantidad</label>
      <input type="number" name="qty" value="0">
      <input type="submit" class="col-xs-12 btn btn-success" name="" value="Agregar al carrito">

      {!! Form::Close()!!}
        @if(Auth::user()->isAdmin()=='admin')
          @include('products.delete',['product'=>$product])
          <button class="col-xs-12 btn btn-success"><a style="color: white;" href="{{url('/products/'.$product->id.'/edit')}}">Editar</a></button>
        @endif
      </div>
    </center>
      </div>
  @endforeach
  <div class="col-sm-12">
    <center>
      {{$products->links()}}
    </center>
  </div>
</div>
@endsection
