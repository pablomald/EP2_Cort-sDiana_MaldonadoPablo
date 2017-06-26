<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pedido;

class PedidosController extends Controller
{

  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
      $pedidos= Pedido::all();
      return view("pedidos.index",['pedidos'=>$pedidos]);
  }
}
