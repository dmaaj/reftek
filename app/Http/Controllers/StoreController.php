<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use App\Manager;

class StoreController extends Controller
{
    //

    public function __construct(Store $store_id)
    {
        $this->store_id = $store_id;
    }


    public function index(int $store_id){
        $store = $this->store_id->storeId($store_id);
        $data = $store->first();
        $products = $this->store_id->products($store_id);
        $query = $this->store_id->storemanager($store_id)->first();
        
        if (!empty($query)){
            $manager_id = $query->manager_id;
            $managers = $this->store_id->manager($manager_id);
            
        }
        else{
            $managers = "";
        }
        
        
        $views = ($store->count() > 0) ? 'store' : '404';
        return view($views,[
            'store' => $data,
            'products'=> $products,
            'managers'=> $managers,
            
        ]);
    }
}
