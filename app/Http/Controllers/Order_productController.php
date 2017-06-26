<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Order_product;
use App\Pedido;
use App\PedidoProducto;


class Order_productController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
      {
        $pedido=new Pedido;
        $pedido->cliente_id=$request->cliente_id;
        $pedido->estado='Enviado';
        $now = new \DateTime();
        $pedido->fecha=$now;
        $shopping_carts=\Session::get('cart.orderProduct');
        $pedido->save();
        $lastInsertedId = $pedido->id;
        foreach($shopping_carts as $card){
          $pp=new PedidoProducto;
          $pp->pedido_id=$lastInsertedId;
          $pp->producto_id=$card->product_id;
          $pp->cantidad=$card->qty;
          $pp->save();
        }
        $total=0;
        $productsSize=0;
        $shopping_carts=array();
        $products= Product::paginate(3);
        return view('/products.index',['shopping_carts'=>$shopping_carts,'products'=>$products,'total'=>$total]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
