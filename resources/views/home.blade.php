@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    Dashboard
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Stores
                </div>
                <div class="card-body">
                <ul>
                
                    @foreach($stores as $store)
                    <li><a href="/stores/{{$store->id}}">
                        {{$store->name}}
                        </a>
                    </li>
                    @endforeach
                </ul>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Links
                </div>
                <div class="card-body">
                    <ul>
                        <li> <a href="{{route('add')}}">Add Stores </a></li>
                        <li> <a href="{{route('add')}}">Add Manager </a></li>
                        <li> <a href="{{route('add')}}">Add Product </a></li>
                        
                    
                    </ul>
                </div>
            </div>
        </div>


    </div>
</div>
@endsection
