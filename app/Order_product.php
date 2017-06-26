<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order_product extends Model
{
    public static function productsSize(){
      return count(\Session::get('cart.orderProduct'));
    }

    public static function total(){
      $total=0;
      $shopping_carts=\Session::get('cart.orderProduct');
      foreach ($shopping_carts as $product) {
        $total=$total+($product->product_price * $product->qty);
      }
      return $total;
    }
}
