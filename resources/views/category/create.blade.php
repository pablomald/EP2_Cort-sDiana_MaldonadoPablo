@extends('layouts.app')
@section('content')
<div class="col-md-4"></div>
<div class="col-md-4">
  <center><h2>Registrar nueva categoria</h2><br>
{!!Form::open(['url'=>'/category/','method'=>'POST', 'class'=>'inline-block'])!!}
Nombre de la categoria
{{Form::text('nombre','',['class'=>'form-control'])}}
Descripcion:
{{Form::text('descripcion','',['class'=>'form-control'])}}
<br><input type="submit" class="btn btn-success" value="guardar">
</center>
</div>
@endsection
