## NAMA : Irfan Thoriq Habibi
## NIM : 2311102131
# PENJELASAN

## 🗂️ Struktur Project

```
app/
 └── Http/
      └── Controllers/
           └── Controller.php

public/
 └── data/
      └── mahasiswa.json

resources/
 └── views/
      └── mahasiswa.blade.php

routes/
 └── web.php
```

---

## 📄 Penjelasan Kode

### 1. JSON (Data Mahasiswa)

File: `public/data/mahasiswa.json`

Berisi data mahasiswa dalam format JSON:

* nama
* nim
* kelas
* prodi

---

### 2. Controller

File: `app/Http/Controllers/Controller.php`

Fungsi:

* `index()` → menampilkan halaman Blade
* `getData()` → membaca file JSON dan mengembalikan data dalam bentuk JSON

---

### 3. Routing

File: `routes/web.php`

```php
Route::get('/', [Controller::class, 'index']);
Route::get('/get-mahasiswa', [Controller::class, 'getData']);
```

---

### 4. Blade (Tampilan)

File: `resources/views/mahasiswa.blade.php`

Fungsi:

* Menampilkan judul halaman
* Tombol untuk mengambil data
* AJAX untuk fetch data
* Menampilkan data dalam bentuk card

---

### 5. AJAX

Digunakan untuk mengambil data dari route `/get-mahasiswa` tanpa reload halaman.

---

### Cara Menggunakan

1. tulis "php artisan serve" pada terminal
2. buka http://127.0.0.1:8000 di browser
3. akan muncul tampilan dengan judul "Data Mahasiswa"
<img src="./assets/foto1.png" width="600">
4. Data mahasiswa akan muncul tanpa reload
<img src="./assets/foto2.png" width="600">

---

## ✨ Author

Nama: Irfan Thoriq Habibi
NIM: 2311102131
