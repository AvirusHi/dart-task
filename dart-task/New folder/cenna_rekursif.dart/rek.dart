import 'dart:io';

int faktorial(int n) {
  if (n <= 1) {
    return 1; // Basis rekursi
  }
  return n * faktorial(n - 1); // Rekursi
}

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan angka: ");
  int? angka = int.tryParse(stdin.readLineSync() ?? "");

  // Validasi input
  if (angka == null || angka < 0) {
    print("Input tidak valid! Harap masukkan bilangan bulat positif atau nol.");
    return;
  }

  // Menampilkan hasil faktorial
  print("Faktorial dari $angka adalah ${faktorial(angka)}");
}
