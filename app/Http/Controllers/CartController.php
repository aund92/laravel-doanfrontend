<?php

namespace App\Http\Controllers;

use App\Category;
use App\Order;
use App\OrderItem;
use App\Product;
use App\Slider;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CartController extends Controller
{

    public function index()
    {
        $sliders = Slider::latest()->get();
        $categorys = Category::where('parent_id', 0)->get();
        $products = Product::latest()->take(6)->get();
        $productsRecommend = Product::latest('views_count', 'desc')->take(12)->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        $cart = session()->get('cart');
        if(!isset($cart)) {
            $cart = [];
        }
        return view('cart', compact('sliders', 'categorys', 'products', 'productsRecommend', 'categorysLimit','cart'));
    }

    public function addToCart($id)
    {

        $product = Product::find($id);

        if (!$product) {

            abort(404);

        }

        $cart = session()->get('cart');

        // if cart is empty then this the first product
        if (!$cart) {
            $cart = [
                $id => [
                    "name" => $product->name,
                    "quantity" => 1,
                    "price" => $product->price,
                    "feature_image_path" => $product->feature_image_path
                ]
            ];

            session()->put('cart', $cart);

            return redirect()->back()->with('success', 'Thêm vào giỏ hàng thành công!');
        }

        // if cart not empty then check if this product exist then increment quantity
        if (isset($cart[$id])) {

            $cart[$id]['quantity']++;

            session()->put('cart', $cart);

            return redirect()->back()->with('success', 'Thêm vào giỏ hàng thành công!');

        }

        // if item not exist in cart then add to cart with quantity = 1
        $cart[$id] = [
            "name" => $product->name,
            "quantity" => 1,
            "price" => $product->price,
            "feature_image_path" => $product->feature_image_path
        ];

        session()->put('cart', $cart);

        return redirect()->back()->with('success', 'Thêm vào giỏ hàng thành công!');
    }

    public function removeCartItem($id)
    {

        $product = Product::find($id);

        if (!$product) {

            abort(404);

        }

        $cart = session()->get('cart');
        unset($cart[$id]);

        session()->put('cart', $cart);

        return redirect()->back()->with('success', 'Thêm vào giỏ hàng thành công!');
    }
    public function tracking()
    {
        $sliders = Slider::latest()->get();
        $categorys = Category::where('parent_id', 0)->get();
        $products = Product::latest()->take(6)->get();
        $productsRecommend = Product::latest('views_count', 'desc')->take(12)->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();
        $cart = session()->get('cart');
        if(!isset($cart)) {
            $cart = [];
        }
        return view('tracking', compact('sliders', 'categorys', 'products', 'productsRecommend', 'categorysLimit','cart'));

    }
    public function order(Request $request)
    {
        $order = Order::create([
            'customer_name' => $request->customer_name,
            'phone_number' => $request->phone_number,
            'customer_address' => $request->customer_address,
            'email' => $request->email,
            'order_date' => Carbon::now(),
            'status' => 1
        ]);
        $carts = session()->get('cart');
        foreach ($carts as $key => $cart){
            OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $key,
                'quantity' => $cart['quantity'],
                'price' => $cart['price'],
                'amount' => $cart['quantity'] * $cart['price']
            ]);
        }
        session()->forget('cart');
        return redirect('')->with('success', 'Đặt Hàng Thành CÔng');
    }

    public function tracking2(Request $request)
    {
        $sliders = Slider::latest()->get();
        $categorys = Category::where('parent_id', 0)->get();
        $products = Product::latest()->take(6)->get();
        $productsRecommend = Product::latest('views_count', 'desc')->take(12)->get();
        $categorysLimit = Category::where('parent_id', 0)->take(3)->get();

        $order = Order::find($request->orderId);
        return view('tracking', compact('sliders', 'categorys', 'products', 'productsRecommend', 'categorysLimit','order'));

    }
}
