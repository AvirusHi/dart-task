import 'dart:io';

void main() {
  // Mendeklarasikan konstanta untuk nilai π (pi)
  const double pi = 3.1415926535;

  // Meminta pengguna untuk memasukkan jari-jari lingkaran
  print("Masukkan jari-jari lingkaran: ");
  double? radius = double.tryParse(stdin.readLineSync() ?? "");

  // Validasi input (tidak boleh null atau negatif)
  if (radius == null || radius < 0) {
    print("Input tidak valid! Masukkan angka positif.");
    return;
  }

  // Anonymous function untuk menghitung luas lingkaran
  var luasLingkaran = (double r) => pi * r * r;

  // Menampilkan hasil perhitungan
  print("Luas lingkaran dengan jari-jari $radius adalah: ${luasLingkaran(radius)}");
}
