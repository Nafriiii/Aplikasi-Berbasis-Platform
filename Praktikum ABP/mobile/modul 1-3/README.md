<div align="center">
  <br />
  <h1>LAPORAN PRAKTIKUM<br>APLIKASI BERBASIS PLATFORM</h1>
  <br />
  <h3>PERTEMUAN 8</h3>
  <br />
  <img src="https://upload.wikimedia.org/wikipedia/commons/0/03/Logo_Telkom_University_potrait.png" alt="Logo" width="300"> 
  <br />
  <h3>Disusun Oleh :</h3>
  <p>
    <strong>Irfan Thoriq Habibi</strong><br>
    <strong>2311102131</strong><br>
    <strong>PS1IF-11-REG04</strong>
  </p>
  <br />
  <h3>Dosen Pengampu :</h3>
  <p>
    <strong>Cahyo Prihantoro, S.Kom., M.Eng</strong>
  </p>
  <br />
    <h4>Asisten Praktikum :</h4>
    <strong>Gilang Saputra</strong> <br>
    <strong>Rangga Pradarrell Fathi</strong>
  <br />
  <h3>LABORATORIUM HIGH PERFORMANCE
 <br>PROGRAM STUDI TEKNIK INFORMATIKA<br>FAKULTAS INFORMATIKA<br>UNIVERSITAS TELKOM PURWOKERTO<br>2026</h3>
</div>

## MODUL 1 - RUNNING MODUL

### GIT
Git adalah salah satu sistem pengontrol versi pada suatu proyek perangkat lunak yang diciptakan oleh Linus Torvadals yang dimana bertugas untuk mencatat setiap perubahan pada file proyek yang akan dikerjakan banyak orang maupun sendiri. Git merupakan destributed revision control (VCS terdistribusi) yaitu  penyimpanan database pada git tidak hanya berada dalam satu tempat saja.

### Instalasi JDK
Jdk atau Java Development kit adalah suatu perangkat yang digunakan untuk melakukan proses kompilasi dari kode java ke bytcode sehingga dapat dimengerti dan dijalankan oleh JRE (Java Runtime Environtment). 

### Instalasi Flutter SDK
Flutter adalah salah satu framework yang dapat digunakan untuk membangun aplikasi mobile multiplatform.

### Instalasi Android Studio
Android Studio adalah Integrated Development Environment (IDE) resmi dari Google untuk mengembangkan aplikasi Android. Berbasis IntelliJ IDEA, IDE ini menyediakan berbagai fitur canggih seperti emulator cepat, sistem build berbasis Gradle, dan editor kode yang memudahkan coding, debugging, serta testing aplikasi secara real-time.

### Instalasi SDK Android
SDK (Standart Development Kit) adalah kumpulan dari beberapa alat, komponen, juga platform untuk mengembangkan aplikasi berbasis android. SDK wajib ada pada Android Studio.

### Instalasi Visual Studio Code
Visual Studio Code (VS Code) adalah code editor ringan namun canggih buatan Microsoft yang gratis dan open-source untuk menulis, mendebug, dan mengedit kode pemrograman. VS Code mendukung berbagai bahasa (JavaScript, Python, PHP, C++, dll) di Windows, macOS, dan Linux, serta sangat populer karena memiliki ekosistem ekstensi yang kaya.

### Instalasi Extension Visual Studio Code
Untuk menginstall extension, klik icon disamping, lalu pilih extension yang diinginkan. Kemudian install.

## MODUL 2 - PENGENALAN FLUTTER

### Apa Itu Flutter
Apa itu flutter? Flutter adalah platform yang digunakan untuk membuat aplikasi multiplatform dengan satu basis coding (codebase). Artinya, aplikasi yang dihasilkan dapat dipakai di berbagai platform, baik mobile Android, iOS, web, maupun desktop. Flutter memiliki dua komponen penting, yaitu: 
•	SKD menjadi komponen penting karena berisi sekumpulan tools untuk membuat aplikasi agar bisa dijalankan di berbagai platform.  
•	Sedangkan Framework UI merupakan komponen UI untuk kustomisasi aplikasi sesuai kebutuhan.


### Arsitektur Flutter
Flutter mempunyai arsitektur dasar yang nantinya dapat di terapkan pada aplikasi dan mengelola statusnya dengan mudah yang dimana Arsitektur digunakan pada Flutter disebut Business Logic Component (BLOC). Pada dasarnya, hall ini melalui pendekatan ketika terjadinya suatu event dan menghandle perubahan state pada aplikasi. 
BLOC merupakan pendekatan yang baik untuk memisahkan logika bisnis dari antarmuka. Ide intinya yang digunakan pada arsitektur BLOC adalah simplicity, scalability, dan testability, dan semua tujuan ini pasti dicapai dalam arsitektur BLOC.

### Helloo World Pada Flutter
Pada pengenalan Flutter kali ini, kita akan membuat Hello World sebagai permulaan ketika menggunakan Flutter. Contoh kode hello world pada flutter yang ditulis dengan nama kode main.dart
```dart
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Root aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: const MyHomePage(
        title: "Flutter Hello World Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Hello World',
        ),
      ),
    );
  }
}
```

## MODUL 3 - PENGENALAN DART

### Pengenalan Dart
Dart adalah bahasa pemrograman open-source berorientasi objek yang dikembangkan oleh Google, dirancang khusus untuk membangun aplikasi cepat di berbagai platform (mobile, web, desktop, dan server). Dart merupakan bahasa utama yang digunakan dalam framework UI Flutter untuk mengembangkan aplikasi iOS dan Android secara bersamaan.

### Variable
Untuk penggunaan variable di dart, terdapat beberapa cara, yaitu dengan var, type annotation dan multiple variable.
```dart
var variableName;
var name = "Nizal";
String? nama;
String namaLengkap = "M Nizal";
int a, b, c;
int x = 1, y = 2, z = 3;
```
Variable primitive yang tersedia di dart : integer, double, string, boolean

### Statement Control
Terdapat beberapa cara untuk mendeklarasikan statement control, yaitu if, if else, if else if, switch case.

1. IF Statement
```dart
int nilai = 75;
  if (nilai > 70) {
    print("Lulus (IF)");
  }
```
2. IF ELSE Statement
```dart
  if (nilai >= 60) {
    print("Lulus (IF ELSE)");
  } else {
    print("Tidak Lulus (IF ELSE)");
  }
```
3. IF ELSE IF Statement
```dart
  if (nilai >= 85) {
    print("Grade A");
  } else if (nilai >= 75) {
    print("Grade B");
  } else if (nilai >= 65) {
    print("Grade C");
  } else {
    print("Grade D");
  }
```
4. SWITCH CASE Statement
```dart
  int pilihan = 2;
  switch (pilihan) {
    case 1:
      print("Menu 1 dipilih");
      break;
    case 2:
      print("Menu 2 dipilih");
      break;
    default:
      print("Menu tidak tersedia");
      break;
  }
```

### Looping
Secara umum, terdapat dua cara untuk melakukan looping di dart, yaitu menggunakan for loop dan while loop

1. For Loops <br>
Gunakan for loop saat kondisinya tau persis seberapa banyak looping akan dilakukan, contohnya melakukan perulangan sebanyak 10 kali dengan iterasi sebanyak 1 tingkat atau 1 kali.
```dart
  print("Perulangan FOR:");
  for (int i = 1; i <= 5; i++) {
    print("Angka ke-$i");
  }
```
2. While Loops <br>
Gunakan while loop saat kondisinya tidak tahu kapan perulangan akan berhenti, contohnya sediakan input angka hingga user menginput tanda "-".
```dart
  print("\nPerulangan WHILE:");
  int j = 1;
  while (j <= 5) {
    print("Angka ke-$j");
    j++;
  }
```

### List
Secara umum, kumpulan banyak data dalam satu variable disibut array. Tetapi beberapa bahasa pemrograman menyebutnya dengan list, termasuk bahasa dart ini. List memiliki 2 tipe, yaitu Fixed Length List dan Growable List
1. Fixed Length List <br>
Dari namanya bisa diketahui bahwa tipe list ini memiliki panjang index yang tetap dan tidak dapat bertambah banyak.
```dart
  List<int> newList = List.filled(3, 0);
  newList[0] = 12;
  newList[1] = 13;
  newList[2] = 11;
  print("Fixed List: $newList");
```
2. Growable List <br>
Gunakan growable list apabila memiliki banyak object yang tidak menentu atau banyaknya object yang terus bertambah.
```dart
  List<int> dynamicList = [];
  dynamicList.add(12);
  dynamicList.add(13);
  dynamicList.add(11);
  print("Dynamic List: $dynamicList");
```

### Fungsi
Pada bahasa pemrograman yang mendukung Object Oriented Programming, fungsi atau prosedur memilki peranan yang sangat penting. Untuk menghasilkan kualitas kode yang sangat baik, programmer bisa menggunakan beberapa prinsip pemrograman yang umum digunakan seperti SOLID, KISS, YAGNI, dsb. Semua prinsip tersebut menjunjung tinggi separation of concern yang artinya setiap kodingan memiliki tanggung jawabnya sendiri dan mengurangi sebanyak mungkin boilerplate code

1. Mendefinisikan Fungsi
```dart
// mendefinisikan fungsi
int factorial(int number) {
  if (number <= 0) {
    return 1;
  } else {
    return number * factorial(number - 1);
  }
}
```
2. Memanggil Fungsi
```dart
// memanggil fungsi
void main() {
  print(factorial(6));
}
```
3. Mengembalikan Nilai <br>
Tambahkan return apabila anda mendefinisikan sebuah fungsi, contohnya ada pada codingan dibawah yang bisa mengembalikan nilai faktorial dari angka yang sudah ditentukan.
```dart
// mengembalikan nilai
int factorialReturn(int number) {
  if (number <= 0) {
    return 1;
  } else {
    return number * factorialReturn(number - 1);
  }
}
```
4. Menambahkan Parameter <br>
Fungsi memiliki scope yang terbatas, tentunya fungsi butuh input dari luar agar program didalamnya bisa memproses tugasnya.
```dart
// menambahkan parameter
int factorialWithParameter(int number) {
  if (number <= 0) {
    return 1;
  } else {
    return number * factorialWithParameter(number - 1);
  }
}
```