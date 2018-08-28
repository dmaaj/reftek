@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    Store 
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Store Details
                </div>
                <div class="card-body">
                    <ul>
                        <li>                          
                            Name: {{$store->name}}
                            </li>
                            <li>                          
                            Location: {{$store->location}}
                            </li>
                            <li>                          
                            Products: <ol>
                                @foreach ($products as $product)
                                    <li> Product Name: {{$product->name}} </li>
                                 
                                        @endforeach
                                </ol>
                            Managers: <ol>
                            
                                @if(!empty($managers))
                                    @foreach ($managers as $manager)
                                
                                    <li> Manager Name: {{$manager->name}} <br/>
                                         Manager Email: {{$manager->email}}
                                    </li>
                                 
                                        @endforeach
                                @else
                                    You currently have no manager for this store
                                @endif
                                </ol>

                            </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>

@endsection