<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    use HasFactory;

    // Nama tabel database
    protected $table = 'data_buku';

    // Primary key
    protected $primaryKey = 'bukuID';

    // Karena primary key string
    public $incrementing = false;

    protected $keyType = 'string';

    protected $fillable = [
        'bukuID',
        'judul_buku',
        'penulis',
        'penerbit',
        'jumlah_halaman',
        'tahun_terbit'
    ];
}