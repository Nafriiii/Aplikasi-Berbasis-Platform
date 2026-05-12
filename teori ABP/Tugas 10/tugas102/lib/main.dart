import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ModNetworking());
}

class ModNetworking extends StatefulWidget {
  const ModNetworking({super.key});

  @override
  State<ModNetworking> createState() => _ModNetworkingState();
}

class _ModNetworkingState extends State<ModNetworking> {
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2025-03-15&endtime=2025-03-16&limit=20',
        ),
      );

      if (response.statusCode == 200) {
        final d = jsonDecode(response.body);

        List<Map<String, dynamic>> tmp = [];

        for (int i = 0; i < d['features'].length; i++) {
          tmp.add({
            'desc': d['features'][i]['properties']['title'],
            'type': d['features'][i]['properties']['type'],
          });
        }

        setState(() {
          data = tmp;
        });
      } else {
        debugPrint("Gagal mengambil data");
      }
    } catch (e) {
      debugPrint("Error : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Gempa',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Data Gempa"),
          backgroundColor: Colors.blue,
        ),

        body: data.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.green.shade200,
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                            CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 220,
                            child: Text(
                              data[index]["desc"],
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 80,
                            child: Text(
                              data[index]["type"],
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}