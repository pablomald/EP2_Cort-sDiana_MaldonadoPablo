@extends('layouts.app')
@section('content')

  <center><h1>Lista de pedidos</h1><br>
    <div class="col-md-3"></div>
  <table class="col-md-6">
    <thead>
      <tr>
        <th>Id de pedido</th>
        <th>Id de cliente</th>
        <th>Estado</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($pedidos as $pedido)
        <tr>
          <td>{{$pedido->id}}</td>
          <td>{{$pedido->cliente_id}}</td>
          <td>{{$pedido->estado}}</td>
        </tr>
      @endforeach
    </tbody>
  </table>
  </center>
  @endsection
