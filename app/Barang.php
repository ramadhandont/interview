<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model 
{
    protected $table = "barang";
    public function pembelian() {
        return $this->hasMany('App\Pembelian');
    }
    public function penjualan() {
        return $this->hasMany('App\Penjualan');
    }


}
