<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Penjualan extends Model 
{
    protected $table = "penjualan";
    public function barang() {
        return $this->belongsTo('App\Barang');
    }

}
