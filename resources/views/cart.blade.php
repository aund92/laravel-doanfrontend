
@extends('layouts.master')

@section('title')
    <title>CMT-Dragon | Home page</title>
@endsection

@section('content')
    <section id="cart_items">
        <div class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Shopping Cart</li>
                </ol>
            </div>
            @if(session()->has('OrderSuccess'))
                <div class="alert alert-success" role="alert">
                    {{session()->get('OrderSuccess')}}
                </div>
            @endif
            <div class="table-responsive cart_info">
                <table class="table table-condensed">
                    <thead>
                    <tr class="cart_menu">
                        <td class="image">Item</td>
                        <td class="description"></td>
                        <td class="price">Price</td>
                        <td class="quantity">Quantity</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($cart as $key => $cartItem)
                        <tr>
                            <td class="cart_product">
                                <a href=""><img src="images/cart/one.png" alt=""></a>
                            </td>
                            <td class="cart_description">
                                <h4><a href="">{{$cartItem['name']}}</a></h4>
                                <p>Web ID: 1089772</p>
                            </td>
                            <td class="cart_price">
                                <p>{{$cartItem['price']}}</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
{{--                                    <a class="cart_quantity_up" href=""> + </a>--}}
                                    <input class="cart_quantity_input" type="text" name="quantity" readonly value="{{$cartItem['quantity']}}" autocomplete="off" size="2">
{{--                                    <a class="cart_quantity_down" href=""> - </a>--}}
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">{{$cartItem['price']}}</p>
                            </td>
                            <td class="cart_delete">
                                <a class="cart_quantity_delete" href="{{route('removeCartItem',$key)}}"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                    @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </section> <!--/#cart_items-->

    <section id="do_action">
        <div class="container">
            <div class="heading">

            </div>
            <div class="shopper-informations">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="shopper-info">
                            <p>Thông tin khách hàng</p>
                            <form method="post" action="{{route('order')}}">
                                @csrf
                                <input type="text" placeholder="Tên Khách Hàng" name="customer_name">
                                <input type="text" placeholder="Địa Chỉ" name="customer_address">
                                <input type="text" placeholder="Số Điện Thoại" name="phone_number">
                                <input type="email" placeholder="Email" name="email">
                                <input type="submit" class="btn btn-primary" value="Đặt Hàng">
                            </form>

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section><!--/#do_action-->
@endsection
