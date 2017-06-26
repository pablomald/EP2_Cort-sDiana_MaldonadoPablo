@extends('layouts.app')
@section('content')
  <center><h1>Lista de pedidos</h1></center>
  <table>
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
          <td>{{pedido->id}}</td>
          <td>{{pedido->cliente_id}}</td>
          <td>{{pedido->estado}}</td>
        </tr>
      @endforeach
    </tbody>
  </table>
  @endsection
