import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Buku.dart';

void main() {
  runApp(const MyApp12());
}

class MyApp12 extends StatelessWidget {
  const MyApp12({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BukuPage(),
    );
  }
}

class BukuPage extends StatefulWidget {
  const BukuPage({super.key});

  @override
  State<BukuPage> createState() => _BukuPageState();
}

class _BukuPageState extends State<BukuPage> {

  late Future<List<Buku>> futureBuku;

  @override
  void initState() {
    super.initState();

    futureBuku = fetchBuku();
  }

  Future<List<Buku>> fetchBuku() async {

    // GANTI DENGAN IP LARAVEL KAMU
    final response = await http.get(
      Uri.parse(
        'http://192.168.100.19:8000/api/buku',
      ),
    );

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      List<dynamic> listData = data['list'];

      return listData
          .map((json) =>
              Buku.fromJson(json))
          .toList();

    } else {

      throw Exception(
        'Gagal mengambil data',
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Data Buku Laravel API",
        ),
      ),

      body: FutureBuilder<List<Buku>>(

        future: futureBuku,

        builder: (context, snapshot) {

          // Loading
          if (snapshot.connectionState ==
              ConnectionState.waiting) {

            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          }

          // Error
          if (snapshot.hasError) {

            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          // Data kosong
          if (!snapshot.hasData ||
              snapshot.data!.isEmpty) {

            return const Center(
              child: Text(
                "Data kosong",
              ),
            );
          }

          // Data berhasil
          final listBuku = snapshot.data!;

          return ListView.builder(

            itemCount: listBuku.length,

            itemBuilder:
                (context, index) {

              final buku =
                  listBuku[index];

              return Card(

                margin:
                    const EdgeInsets.all(
                  10,
                ),

                child: Padding(

                  padding:
                      const EdgeInsets.all(
                    15,
                  ),

                  child: Column(

                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                    children: [

                      Text(

                        buku.judulBuku,

                        style:
                            const TextStyle(
                          fontSize: 22,
                          fontWeight:
                              FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        "ID Buku : ${buku.bukuID}",
                      ),

                      Text(
                        "Penulis : ${buku.penulis}",
                      ),

                      Text(
                        "Penerbit : ${buku.penerbit}",
                      ),

                      Text(
                        "Jumlah Halaman : ${buku.jumlahHalaman}",
                      ),

                      Text(
                        "Tahun Terbit : ${buku.tahunTerbit}",
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        "Created : ${buku.createdAt}",
                        style:
                            const TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      Text(
                        "Updated : ${buku.updatedAt}",
                        style:
                            const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}