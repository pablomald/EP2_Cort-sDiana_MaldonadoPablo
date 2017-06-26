@extends('layouts.app')
@section('content')
{!!Form::open(['url'=>'/products/'.$product->id, 'method'=>'PATCH','class'=>'inline-block',  'files' => true])!!}
Nombre del producto:
{{Form::text('nombre',$product->nombre,['class'=>'form-control'])}}
Descripción del producto:
{{Form::text('descripcion',$product->descripcion,['class'=>'form-control'])}}
Precio del producto:
{{Form::text('precio',$product->precio,['class'=>'form-control'])}}
Categoria del producto:
{{Form::select('categoria_id',$categories,['class'=>'form-control'])}}
Subir imagen
{!! Form::file('image') !!}
<input type="submit" class="btn btn-success" value="editar">
@endsection
