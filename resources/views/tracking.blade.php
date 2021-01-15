
@extends('layouts.master')

@section('title')
    <title>CMT-Dragon | Home page</title>
@endsection
@section('css')
    <style>


        #progressbar {
            margin-bottom: 3vh;
            overflow: hidden;
            color: rgb(252, 103, 49);
            padding-left: 0px;
            margin-top: 3vh
        }

        #progressbar li {
            list-style-type: none;
            font-size: x-small;
            width: 25%;
            float: left;
            position: relative;
            font-weight: 400;
            color: rgb(160, 159, 159)
        }

        #progressbar #step1:before {
            content: "";
            color: rgb(252, 103, 49);
            width: 5px;
            height: 5px;
            margin-left: 0px !important
        }

        #progressbar #step2:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-left: 32%
        }

        #progressbar #step3:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-right: 32%
        }

        #progressbar #step4:before {
            content: "";
            color: #fff;
            width: 5px;
            height: 5px;
            margin-right: 0px !important
        }

        #progressbar li:before {
            line-height: 29px;
            display: block;
            font-size: 12px;
            background: #ddd;
            border-radius: 50%;
            margin: auto;
            z-index: -1;
            margin-bottom: 1vh
        }

        #progressbar li:after {
            content: '';
            height: 2px;
            background: #ddd;
            position: absolute;
            left: 0%;
            right: 0%;
            margin-bottom: 2vh;
            top: 1px;
            z-index: 1
        }

        .progress-track {
            padding: 0 8%
        }

        #progressbar li:nth-child(2):after {
            margin-right: auto
        }

        #progressbar li:nth-child(1):after {
            margin: auto
        }

        #progressbar li:nth-child(3):after {
            float: left;
            width: 68%
        }

        #progressbar li:nth-child(4):after {
            margin-left: auto;
            width: 132%
        }

        #progressbar li.active {
            color: black
        }

        #progressbar li.active:before,
        #progressbar li.active:after {
            background: rgb(252, 103, 49)
        }


        .card {
            margin: auto;
            width: 100%;
            max-width: 600px;
            padding: 4vh 0;
            box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-top: 3px solid rgb(252, 103, 49);
            border-bottom: 3px solid rgb(252, 103, 49);
            border-left: none;
            border-right: none
        }

        @media(max-width:768px) {
            .card {
                width: 90%
            }
        }

        .title {
            color: rgb(252, 103, 49);
            font-weight: 600;
            margin-bottom: 2vh;
            padding: 0 8%;
            font-size: initial
        }

        #details {
            font-weight: 400
        }

        .info {
            padding: 5% 8%
        }

        .info .col-5 {
            padding: 0
        }

        #heading {
            color: grey;
            line-height: 6vh
        }

        .pricing {
            background-color: #ddd3;
            padding: 2vh 8%;
            font-weight: 400;
            line-height: 2.5
        }



        .total {
            padding: 2vh 8%;
            color: rgb(252, 103, 49);
            font-weight: bold
        }

        .total .col-3 {
            padding: 0
        }

        .footer {
            padding: 0 8%;
            font-size: x-small;
            color: black
        }

        .footer img {
            height: 5vh;
            opacity: 0.2
        }

        .footer a {
            color: rgb(252, 103, 49)
        }
    </style>
@endsection
@section('content')
    <section>
        <div class="container">
            <div class="row">

                <div class="card">
                    <div class="title">Theo dõi đơn hàng</div>
                    <div class="info">
                        <div class="row">
                            <form action="{{route('tracking2')}}">
                                <div class="col-12">
                                    <label>Nhập Mã hõa đơn<label>
                                            <input type="text" name="orderId" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary">Tìm Kiếm</button>
                            </form>

                        </div>
                    </div>
                </div>
                @if(isset($order))
                    <div class="card">
                        <div class="title">Thông tin đơn hàng</div>
                        <div class="progress-track">
                            <ul id="progressbar">
                                <li class="step0 {{in_array($order->status, [1,2,3,4]) ? 'active' : ''}} " id="step1">Đặt Hàng</li>
                                <li class="step0 {{in_array($order->status, [2,3,4]) ? 'active' : ''}} text-center" id="step2">Chuyển cho shipper</li>
                                <li class="step0 {{in_array($order->status, [3,4]) ? 'active' : ''}} text-right" id="step3">Đang Giao Hàng</li>
                                <li class="step0 {{in_array($order->status, [4]) ? 'active' : ''}} text-right" id="step4">Đã Giao Hàng</li>
                            </ul>
                        </div>
                        <div class="info">
                            <div class="row">
                                <span id="heading">Mã Đơn Hàng:</span> <span id="details">{{$order->id}}</span>
                                <br/>
                                <span id="heading">Tên Khách Hàng:</span> <span id="details">{{$order->customer_name}}</span>
                                <br/>
                                <span id="heading">Email:</span> <span id="details">{{$order->email}}</span>
                                <br/>
                                <span id="heading">Số Điện Thoại:</span> <span id="details">{{$order->phone_number}}</span>
                            </div>

                        </div>




                    </div>
                @endif

            </div>
        </div>
    </section>


@endsection
@section('js')
    <script>
        function trackingOrder() {
            $("#test").val($("#orderId").val());
            $('#myModal').modal('show');
        }
    </script>
@endsection
