<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Penjualan;
use App\Barang;
// use App\Pembelian;

class PenjualanController extends Controller
{
    public function __construct()
    {
        
    }

    public function index(){
        $data = Penjualan::with(['barang'])->where('del','0')->get();
        if(count($data)>0){
            // $data['time']   = date('Y-m-d H:i:s');
            $data['flag']   = true;
            $data['status'] = "Data Berhasil Ditemukan";
            return response($data);
        }
        else{
            $data['flag']   = false;
            $data['status'] = "Data Tidak Ditemukan";
            return response($data);
        }
    }

    public function show($id){
        $data = Penjualan::where('id',$id)->get();
        if(count($data)>0){
            $data['flag']   = true;
            $data['status'] = "Data Berhasil Ditemukan";
            return response($data);
        }
        else{
            $data['flag']   = false;
            $data['status'] = "Data Tidak Ditemukan";
            return response($data);
        }
    }

    public function saveAdd(Request $request){
        $data = new Penjualan();
        $data->barang_id    = $request->input('barang');
        $data->email        = $request->input('mail');
        $data->qty          = $request->input('quantity');
        $data->sales        = $request->input('sales');
        $data->check_out    = $request->input('check');
        $data->del          = "0";
        $data->save();
        if($data = true){
            $datas['flag']      = true;
            $datas['status']    = "Berhasil Tambah Data";
            return response($datas);
        }
        else{
            $datas['flag']      = false;
            $datas['status']    = "Gagal Tambah Data";
            return response($datas);
        }
    }

    public function update(Request $request, $id){
        $data = Penjualan::where('id',$id)->first();
        $data->qty          = $request->input('quantity');
        $data->sales        = $request->input('sales');
        $data->check_out    = $request->input('check');
        $data->save();
        if($data = true){
            $datas['flag']      = true;
            $datas['status']    = "Berhasil Merubah Data";
            return response($datas);
        }
        else{
            $datas['flag']      = false;
            $datas['status']    = "Gagal Merubah Data";
            return response($datas);
        }
    }
    
    public function delete(Request $request, $id){
        $data = Penjualan::where('id',$id)->first();
        $data->del          = "1";
        $data->deleted_at   = date('Y-m-d H:i:s');
        $data->save();
        if($data = true){
            $datas['flag']      = true;
            $datas['status']    = "Berhasil Delete Data";
            return response($datas);
        }
        else{
            $datas['flag']      = false;
            $datas['status']    = "Gagal Delete Data";
            return response($datas);
        }
    }
    
    public function destroy($id){
        $data = Penjualan::where('id',$id)->first();
        $data->delete();    
        if($data = true){
            $datas['flag']      = true;
            $datas['status']    = "Berhasil Delete Permanen Data";
            return response($datas);
        }
        else{
            $datas['flag']      = false;
            $datas['status']    = "Gagal Delete Permanen Data";
            return response($datas);
        }
    }
}
