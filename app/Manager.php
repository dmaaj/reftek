<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Manager;
use App\Store_Manager;

class Manager extends Model
{
    //
    protected $guarded = [];
    protected $fillable = [
        'name', 'email', 'password',
    ];
    protected $table = 'manager';

    public function stores()
    {
        return $this->belongsToMany('App\Store');
    }

    public function storemanager(int $store_id){
        return Store_Manager::where('store_id', $store_id)->get();
    }
}
