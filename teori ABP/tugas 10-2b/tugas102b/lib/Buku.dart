class Buku {
  final String bukuID;
  final String judulBuku;
  final String penulis;
  final String penerbit;
  final int jumlahHalaman;
  final String tahunTerbit;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Buku({
    required this.bukuID,
    required this.judulBuku,
    required this.penulis,
    required this.penerbit,
    required this.jumlahHalaman,
    required this.tahunTerbit,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Buku.fromJson(Map<String, dynamic> json) {
    return Buku(
      bukuID: json['bukuID'] ?? '',

      judulBuku: json['judul_buku'] ?? '',

      penulis: json['penulis'] ?? '',

      penerbit: json['penerbit'] ?? '',

      jumlahHalaman: json['jumlah_halaman'] is int
          ? json['jumlah_halaman']
          : int.tryParse(
                  json['jumlah_halaman'].toString()
              ) ??
              0,

      tahunTerbit: json['tahun_terbit'].toString(),

      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : DateTime.now(),

      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : DateTime.now(),
    );
  }
}