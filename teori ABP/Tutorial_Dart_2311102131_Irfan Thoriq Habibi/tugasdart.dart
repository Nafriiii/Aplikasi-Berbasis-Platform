void main() {
  List<List<int>> data = [];

  List<int> baris1 = [];
  int nilai1 = 6;
  for (int i = 0; i < 4; i++) {
    baris1.add(nilai1);
    nilai1 += 6;
  }
  data.add(baris1);

  List<int> baris2 = [];
  int nilai2 = 3;
  for (int i = 0; i < 5; i++) {
    baris2.add(nilai2);
    nilai2 += 2;
  }
  data.add(baris2);

  List<int> baris3 = [];
  int nilai3 = 4;
  for (int i = 0; i < 6; i++) {
    baris3.add(nilai3 * nilai3 * nilai3);
    nilai3++;
  }
  data.add(baris3);

  List<int> baris4 = [];
  int nilai4 = 3;
  for (int i = 0; i < 7; i++) {
    baris4.add(nilai4);
    nilai4 += 7;
  }
  data.add(baris4);

  print("Isi List:");
  for (var baris in data) {
    print(baris.join(" "));
  }

  int bil1 = 12;
  int bil2 = 8;
  int hasil = fpb(bil1, bil2);

  print("\nBilangan 1: $bil1");
  print("Bilangan 2: $bil2");
  print("FPB $bil1 dan $bil2 = $hasil");
}

int fpb(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}