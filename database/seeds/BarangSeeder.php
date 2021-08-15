<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
    	$faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 100; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('barang')->insert([
    			// 'id' => $faker->randomNumber,  
    			'barang_nm' => $faker->name,      
    			'harga' => $faker->numberBetween(5,1000),
    			'deskripsi' => $faker->address,
                
    			'created_at' => $faker->dateTime()
                
    		]);
 
    	}
 
    }
}
