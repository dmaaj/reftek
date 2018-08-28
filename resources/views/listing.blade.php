@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    Add Page
                </div>
            </div>
        </div>
    </div>


    <div class="row mt-5">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Add Stores
                </div>
                <div class="card-body">
                    <form action="{{route('addstore')}}" method="POST">
                    {{ csrf_field() }}
                        <div>
                            <label for=""> Store Name </label>
                            <input type="text" name="name"/>
                        </div>
                        <div>
                            <label for=""> Store Location </label>
                            <input type="text" name="location"/>
                        </div>
                        <input type="submit" value="Add" class="btn-primary btn"/>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Add Product
                </div>
                <div class="card-body">
                    <form action="{{route('addproduct')}}" method="POST">
                        {{ csrf_field() }}
                            <div>
                                <label for=""> Product Name </label>
                                <input type="text" name="name"/>
                            </div>
                            <div>
                                <label for=""> Store </label>
                                
                                <select name="store">
                                <option value="">Select Store</option>
                                    @foreach ($stores as $store)
                                     <option value="{{$store->id}}"> {{$store->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="submit" value="Add" class="btn-primary btn"/>
                        </form>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    Create Manager
                </div>
                <div class="card-body">
                    <form action="{{route('createmanager')}}" method="POST">
                        {{ csrf_field() }}
                            <div>
                                <label for=""> Name </label>
                                <input type="text" name="name"/>
                            </div>
                            <div>
                                <label for=""> Email </label>
                                <input type="text" name="email"/>
                                
                            </div>
                            <div>
                                <label for=""> Password </label>
                                <input type="password" name="password"/>
                                
                            </div>
                            <input type="submit" value="Create" class="btn-primary btn"/>
                        </form>
                </div>
            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-4">
        <div class="card">
                <div class="card-header">
                    Add Manager To Store
                </div>
                
                <div class="card-body">
                    <form action="{{route('addmanager')}}" method="POST">
                        {{ csrf_field() }}
                            <div>
                                <label for=""> Store </label>
                                <select name="store">
                                <option value="">Select Store</option>
                                    @foreach ($stores as $store)
                                     <option value="{{$store->id}}"> {{$store->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div>
                                <label for=""> Manager's Name </label>
                                <select name="manager">
                                <option value="">Select Manager</option>
                                    @foreach ($managers as $manager)
                                     <option value="{{$manager->id}}"> {{$manager->name}}</option>
                                    @endforeach
                                </select>
                                
                            </div>
                            <input type="submit" value="Add" class="btn-primary btn"/>
                    </form>
                </div>
        </div>
    </div>
    </div>
</div>


@endsection