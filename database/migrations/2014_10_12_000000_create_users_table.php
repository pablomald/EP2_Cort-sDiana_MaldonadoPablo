<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('categories', function (Blueprint $table) {
          $table->increments('id');
          $table->string('name');
          $table->string('descripcion');
          $table->timestamps();
      });

      Schema::Create('domicilios', function (Blueprint $table){
        $table->increments('id');
        $table->string('calle');
        $table->integer('cp');
        $table->string('colonia');
        $table->string('municipio');
        $table->timestamps();
      });

      Schema::Create('users', function (Blueprint $table){
        $table->increments('id');
        $table->string('name');
        $table->string('email')->unique();
        $table->string('password');
        $table->integer('domicilio_id')->unsigned()->nullable();
        $table->string('tipoUsuario')->default("customer");
        $table->string('telefono')->nullable();
        $table->string('remember_token')->nullable();
        $table->timestamps();
        $table->foreign('domicilio_id')->references('id')->on('domicilios');
      });

      Schema::Create('pedidos', function (Blueprint $table){
        $table->increments('id');
        $table->DateTime('fecha');
        $table->integer('cliente_id')->unsigned();
        $table->string('estado');
        $table->timestamps();
        $table->foreign('cliente_id')->references('id')->on('users');
      });

      Schema::Create('products', function (Blueprint $table){
        $table->increments('id');
        $table->string('nombre');
        $table->text('descripcion');
        $table->decimal('precio',8,2);
        $table->integer('categoria_id')->unsigned();
        $table->timestamps();
        $table->foreign('categoria_id')->references('id')->on('Categories');
      });

      Schema::Create('pedido_productos', function (Blueprint $table){
        $table->increments('id');
        $table->integer('pedido_id')->unsigned();
        $table->integer('producto_id')->unsigned();
        $table->integer('cantidad');
        $table->timestamps();
        $table->foreign('pedido_id')->references('id')->on('pedidos');
        $table->foreign('producto_id')->references('id')->on('products');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
