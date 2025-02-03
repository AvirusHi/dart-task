import 'dart:io';

void main() {
  // Meminta input angka dari pengguna
  print("Masukkan angka dipisahkan dengan spasi: ");
  List<double>? angkaList = stdin.readLineSync()
      ?.split(" ")
      .map((e) => double.tryParse(e))
      .whereType<double>()
      .toList();

  // Validasi input
  if (angkaList == null || angkaList.isEmpty) {
    print("Input tidak valid! Harap masukkan angka yang benar.");
    return;
  }

  // Menggunakan map() untuk menghitung kuadrat semua angka dalam list
  List<double> hasilKuadrat = angkaList.map((x) => x * x).toList();

  // Menampilkan hasil perhitungan
  print("Hasil kuadrat dari angka-angka yang dimasukkan: $hasilKuadrat");
}