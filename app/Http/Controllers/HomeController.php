<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Store;
use App\Product;
use App\Manager;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        
    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $stores = Store::get();
        return view('home', [
            'stores' => $stores,
        ]);
    }

    public function addPage(){
        $stores = Store::get();
        $managers = Manager::get();
        
        return view('listing', [
            'stores' => $stores,
            'managers' => $managers,
        ]);
    }

    public function addStore(Request $request){
        
        Store::create([
            'name' => $request['name'],
            'location' => $request['location'],
        ]);
        

        return back();
        
    }

    public function addProduct(Request $request){
        
        Product::create([
            'name' => $request['name'],
            'store_id' => $request['store'],
        ]);
        

        return back();
        
    }
}
