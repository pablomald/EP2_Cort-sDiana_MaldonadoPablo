<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Order_product;

class ShoppingCartsController extends Controller
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
      $product = new Product;
      $product->product_id = $request->product_id;
      $product->product_name = $request->product_name;
      $product->product_description = $request->product_description;
      $product->product_price = $request->product_price;
      $product->qty=$request->qty;
      \Session::push('cart.orderProduct',$product);
      $shopping_carts=\Session::get('cart.orderProduct');
      $total=Order_product::total();
      $products= Product::paginate(3);
      $productsSize=Order_product::productsSize();

      return view('products.index',
      [
        'shopping_carts'=>$shopping_carts,
        'total'=>$total,
        'productsSize'=>$productsSize,
        'products'=>$products
      ]);
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
