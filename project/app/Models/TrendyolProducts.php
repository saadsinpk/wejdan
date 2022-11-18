<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TrendyolProducts extends Model
{
    use HasFactory;

    protected $table = "trendyol_products";
    protected $primaryKey = 'id';
    protected $fillable = [
        'id',
        'product_url',
        'product_limit',
        'status'
    ];

}
