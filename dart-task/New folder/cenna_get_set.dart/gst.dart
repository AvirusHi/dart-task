import 'dart:io'; // Import untuk membaca input dari terminal

class Car {
  int _speed = 0; // Private field untuk menyimpan kecepatan

  // Getter untuk membaca kecepatan
  int get speed => _speed;

  // Setter untuk mengubah kecepatan dengan validasi
  set speed(int value) {
    if (value < 0) {
      print("⚠️ Kecepatan tidak boleh negatif!");
    } else if (value > 200) {
      print("⚠️ Kecepatan terlalu tinggi! Maksimum 200 km/jam.");
    } else {
      _speed = value;
      print("✅ Kecepatan sekarang: $_speed km/jam");
    }
  }
}

void main() {
  Car myCar = Car();

  while (true) {
    stdout.write("Masukkan kecepatan mobil (0-200) atau 'exit' untuk keluar: ");
    String? input = stdin.readLineSync(); // Membaca input dari terminal

    if (input == null || input.toLowerCase() == 'exit') {
      print("🚗 Program selesai.");
      break;
    }

    int? speedInput = int.tryParse(input); // Konversi input ke integer
    if (speedInput == null) {
      print("⚠️ Mohon masukkan angka yang valid!");
      continue;
    }

    myCar.speed = speedInput; // Menggunakan setter untuk mengubah kecepatan
  }

  print("🔚 Kecepatan akhir: ${myCar.speed} km/jam");
}
