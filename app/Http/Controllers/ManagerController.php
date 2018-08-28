<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manager;
use Illuminate\Support\Facades\Hash;
use App\StoreManager;

class ManagerController extends Controller
{
    //
    public function index(Request $request){

        Manager::create([
            'name' => $request['name'],
            'email' => $request['email'],
            'password' => Hash::make($request['password']),
        ]);
        

        return back();
    }

    public function addmanager(Request $request){

        StoreManager::create([
            'store_id' => $request['store'],
            'manager_id' => $request['manager'],
        ]);

        return back();
    }
}
