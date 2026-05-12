import 'package:flutter/material.dart';
import 'package:tugas101/tugas_11-1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Demo Layout Part 1',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> data = [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2021", "nilai": "180"},
    {"tgl": "09/10/2021", "nilai": "190"},
    {"tgl": "08/09/2021", "nilai": "160"},
    {"tgl": "07/08/2021", "nilai": "155"},
    {"tgl": "06/07/2021", "nilai": "145"},
    {"tgl": "05/06/2021", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 10,
          ),
          child: Column(
            children: [
              // HEADER
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome,",
                          style: TextStyle(
                            color: Color(0xFF7367F0),
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "2311102137 - Daffa Falih Aqilah\n"
                          "PS1IF-11-REG04\n"
                          "TUGAS 10.1 USER INTERACTION",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4B4B4B),
                          ),
                        ),
                      ],
                    ),

                    // AVATAR
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.indigo,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // CARD TOEFL
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF4839EB),
                      Color(0xFF7367F0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: const [
                    Text(
                      "Status tes TOEFL Anda :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "LULUS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Listening\n80",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Structure\n80",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Reading\n90",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // TITLE
              const Text(
                "Riwayat Tes",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // LISTVIEW
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      child: ListTile(
                        leading: const Icon(
                          Icons.date_range,
                          color: Colors.indigo,
                        ),
                        title: Text(
                          "Tanggal Tes : ${data[index]["tgl"]}",
                        ),
                        subtitle: Text(
                          "Nilai : ${data[index]["nilai"]}",
                        ),
                      ),
                    );
                  },
                ),
              ),

              // BUTTON
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp11_1(),
                      ),
                    );
                  },
                  child: const Text(
                    'Go to Tutorial 11-1',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}