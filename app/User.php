<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Http\Middleware;
class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
     public function admin(){
       return $this->tipoUsuario === "admin";
     }
     public function isAdmin(){
       if ($this->tipoUsuario == "admin"){
          return "admin";
       }else{
         return "customer";
       }

     }

     public function id(){
       $valorid=$this->id;

         return $valorid;
     }
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
