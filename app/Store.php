<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Product;
use App\StoreManager;

class Store extends Model
{
    //
    protected $guarded = [];
    protected $table = 'store';



    public function storeId(int $store_id){
        return $this->where('id', $store_id)->get();
    }

    public function products(int $store_id){
        return Product::where('store_id', $store_id)->get();
    }

    public function storemanager(int $store_id){
        return StoreManager::where('store_id', $store_id)->get();
    }
    
    
    public function product()
    {
        return $this->hasMany(Product::class);
    }
    
}
