## Install Program

- Import ke local/server all code
- Jalankan migrate dan seeder, jika tidak berhasil, silahkan jalankan manual query di file /database/interview.sql
- masuk kedalam folder program, lalu jalankan "php -S localhost:80000 -t ./public" untuk jadikan akses program menjadi localhost:8000
- silahkan import file interview.json kedalam postman untuk melakukan pengetesan program

## Run Program by Postman
- get_all(get) -> untuk melihat all penjualan ```http://localhost:8000/penjualan``` 
- get_id(get) -> untuk melihat salah satu penjualan ```http://localhost:8000/penjualan/{id}```
- saveAdd(post) -> untuk menambah penjualan ```(http://localhost:8000/penjualan)``` 
```
    Parameter (contoh)
    - barang:6
    - mail:rama@gmail.com
    - quantity:1
    - sales:329
    - check:0
```  
- update(put) -> untuk mengedit data (http://localhost:8000/penjualan/{id})
    <br/>
    Parameter (contoh)
    - quantity:1
    - sales:329
    - check:1 
- delete soft(put) -> untuk mengapus data dari tampilan(didatabase tidak terdelete) (http://localhost:8000/penjualan/del/{id})
    <br/>
    Parameter (contoh)
    - del:1
- delete permanen(delete) -> untuk mengapus data dari database(hilang record) (http://localhost:8000/penjualan/4)

