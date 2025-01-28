import 'dart:io';

void main() {
  // Meminta input tanggal lahir dari pengguna
  print("Masukkan tanggal lahir Anda (format: yyyy-mm-dd): ");
  String? inputDate = stdin.readLineSync();

  if (inputDate != null && inputDate.isNotEmpty) {
    try {
      // Mengubah input string menjadi objek DateTime
      DateTime birthDate = DateTime.parse(inputDate);
      DateTime today = DateTime.now();

      // Memeriksa apakah tanggal lahir valid
      if (birthDate.isAfter(today)) {
        print("Tanggal lahir tidak valid! Anda belum lahir.");
      } else {
        // Menghitung umur
        int years = today.year - birthDate.year;
        int months = today.month - birthDate.month;
        int days = today.day - birthDate.day;

        // Menyesuaikan bulan dan tahun jika diperlukan
        if (days < 0) {
          months -= 1;
          days += daysInMonth(today.year, today.month - 1);
        }
        if (months < 0) {
          years -= 1;
          months += 12;
        }

        // Output umur pengguna
        print("Umur Anda adalah: $years tahun, $months bulan, dan $days hari.");
      }
    } catch (e) {
      print("Format tanggal tidak valid! Pastikan Anda menggunakan format yyyy-mm-dd.");
    }
  } else {
    print("Input tidak boleh kosong.");
  }
}

// Fungsi untuk mendapatkan jumlah hari dalam bulan tertentu
int daysInMonth(int year, int month) {
  if (month < 1) {
    month += 12;
    year -= 1;
  }
  List<int> daysInEachMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  if (month == 2 && isLeapYear(year)) {
    return 29; // Februari di tahun kabisat
  }
  return daysInEachMonth[month - 1];
}

// Fungsi untuk memeriksa apakah suatu tahun adalah tahun kabisat
bool isLeapYear(int year) {
  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    return true;
  }
  return false;
}
