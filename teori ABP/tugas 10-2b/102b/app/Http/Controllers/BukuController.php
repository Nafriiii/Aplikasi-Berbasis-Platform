<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Buku;

class BukuController extends Controller
{
    /**
     * Menampilkan data buku
     */
    public function index()
    {
        $bukus = Buku::all();

        // Jika akses dari API
        if (request()->segment(1) == 'api') {

            return response()->json([
                'error' => false,
                'list' => $bukus
            ]);
        }

        // Jika akses dari web biasa
        return view('Buku.index', [
            'title' => 'Data Buku',
            'data' => $bukus
        ]);
    }

    /**
     * Form tambah data
     */
    public function create()
    {
        return view('Buku.create');
    }

    /**
     * Simpan data baru
     */
    public function store(Request $request)
    {
        $request->validate([
            'bukuID' => 'required',
            'judul_buku' => 'required',
            'penulis' => 'required',
            'penerbit' => 'required',
            'jumlah_halaman' => 'required',
            'tahun_terbit' => 'required',
        ]);

        Buku::create([
            'bukuID' => $request->bukuID,
            'judul_buku' => $request->judul_buku,
            'penulis' => $request->penulis,
            'penerbit' => $request->penerbit,
            'jumlah_halaman' => $request->jumlah_halaman,
            'tahun_terbit' => $request->tahun_terbit,
        ]);

        // Jika API
        if (request()->segment(1) == 'api') {

            return response()->json([
                'error' => false,
                'message' => 'Data berhasil ditambahkan'
            ]);
        }

        return redirect('/buku')
            ->with('success', 'Data berhasil ditambahkan');
    }

    /**
     * Detail data
     */
    public function show(string $id)
    {
        $buku = Buku::findOrFail($id);

        // Jika API
        if (request()->segment(1) == 'api') {

            return response()->json([
                'error' => false,
                'data' => $buku
            ]);
        }

        return view('Buku.show', compact('buku'));
    }

    /**
     * Form edit
     */
    public function edit(string $id)
    {
        $buku = Buku::findOrFail($id);

        return view('Buku.edit', compact('buku'));
    }

    /**
     * Update data
     */
    public function update(Request $request, string $id)
    {
        $buku = Buku::findOrFail($id);

        $buku->update([
            'judul_buku' => $request->judul_buku,
            'penulis' => $request->penulis,
            'penerbit' => $request->penerbit,
            'jumlah_halaman' => $request->jumlah_halaman,
            'tahun_terbit' => $request->tahun_terbit,
        ]);

        // Jika API
        if (request()->segment(1) == 'api') {

            return response()->json([
                'error' => false,
                'message' => 'Data berhasil diupdate'
            ]);
        }

        return redirect('/buku')
            ->with('success', 'Data berhasil diupdate');
    }

    /**
     * Hapus data
     */
    public function destroy(string $id)
    {
        $buku = Buku::findOrFail($id);

        $buku->delete();

        // Jika API
        if (request()->segment(1) == 'api') {

            return response()->json([
                'error' => false,
                'message' => 'Data berhasil dihapus'
            ]);
        }

        return redirect('/buku')
            ->with('success', 'Data berhasil dihapus');
    }
}