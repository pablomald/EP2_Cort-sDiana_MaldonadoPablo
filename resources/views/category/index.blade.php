@extends('layouts.app')
@section('content')
<div class="container">
<center><h2>Categorias de productos:</h2></center>
@foreach($categories as $category)
<div class="col-sm-4">
  <center>
  <h3>{{$category->name}}</h3>
  <h4>{{$category->descripcion}}</h4>
  <h4>{{$category->id}}</h4>
</center><br>
  @include('category.delete',['categories'=>$category])
  <button class="col-xs-12 btn btn-success"><a style="color: white;" href="{{url('/category/'.$category->id.'/edit')}}">Editar</a></button>
</div>

@endforeach
@endsection
</div>
