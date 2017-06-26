@extends('layouts.app')
@section('content')
<div class="col-md-4"></div>
<div class="col-md-4">
  <center><h2>Registrar nuevo producto</h2></center><br>
{!!Form::open(['url'=>'/products/','method'=>'POST', 'class'=>'inline-block'])!!}
Nombre del producto
{{Form::text('nombre','',['class'=>'form-control'])}}
Precio:
{{Form::text('precio','',['class'=>'form-control'])}}
descripción:
{{Form::text('descripcion','',['class'=>'form-control'])}}
Categoria:
{{Form::select('categoria_id',$categories,['class'=>'form-control'])}}
<br><input type="submit" class="btn btn-success" value="guardar">
</div>
@endsection
