@extends('layouts.app')
@section('content')
{!!Form::open(['url'=>'/category/'.$categories->id, 'method'=>'PATCH','class'=>'inline-block'])!!}
Nombre de la categoria
{{Form::text('nombre',$categories->name,['class'=>'form-control'])}}
descripcion:
{{Form::text('descripcion',$categories->descripcion,['class'=>'form-control'])}}
<input type="submit" class="btn btn-success" value="guardar">
@endsection
