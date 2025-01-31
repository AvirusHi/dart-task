import 'dart:io';

void main() {
  // Meminta input angka dari pengguna
  print("Masukkan angka: ");
  double? angka = double.tryParse(stdin.readLineSync() ?? "");

  // Validasi input
  if (angka == null) {
    print("Input tidak valid! Harap masukkan angka yang benar.");
    return;
  }

  // Fungsi higher-order untuk menghitung kuadrat tanpa mengubah data asli
  double Function(double) kuadrat = (double x) => x * x;

  // Menampilkan hasil perhitungan
  print("Hasil kuadrat dari $angka adalah: ${kuadrat(angka)}");
}
