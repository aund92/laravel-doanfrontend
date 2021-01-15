
@extends('layouts.master')

@section('title')
    <title>CMT-Dragon | Home page</title>
@endsection

@section('css')
    <link href="{{asset('home/home.css')}}" rel="stylesheet">
@endsection

@section('js')

    <link href="{{asset('home/home.js')}}" rel="stylesheet">
@endsection

@section('content')

@include('home.components.slider')
	<section>
		<div class="container">
			<div class="row">

@include('components.sidebar')

				<div class="col-sm-9 padding-right">
                    @if(session()->has('success'))
                        <div class="alert alert-success" role="alert">
                            {{session()->get('success')}}
                        </div>
                    @endif

					<!--features_items-->
					 @include('home.components.feature_product')
					<!--features_items-->

					@include('home.components.category_tab')
					<!--/category-tab-->

					@include('home.components.recommend_product')
					<!--/recommended_items-->

				</div>
			</div>
		</div>
	</section>


@endsection
