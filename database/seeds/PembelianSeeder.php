<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PembelianSeeder extends Seeder
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
    		DB::table('pembelian')->insert([
    			'barang_id' => $faker->numberBetween($min = 1, $max = 101),      
    			'qty' => $faker->numberBetween(5,100),
    			'created_at' => $faker->dateTime()
                
    		]);
 
    	}
    }
}
