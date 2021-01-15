<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OrderItem extends Model
{
    use SoftDeletes;
    protected $table = 'orders_item';
    protected $fillable = ['order_id', 'product_id', 'quantity', 'price', 'amount'];
}
