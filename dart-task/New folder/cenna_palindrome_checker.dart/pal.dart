import 'dart:io';

void main() {
  print("Masukkan kata atau kalimat: ");
  String? input = stdin.readLineSync(); // Membaca input dari user

  if (input != null) {
    // Memeriksa apakah input adalah palindrome
    if (isPalindrome(input)) {
      print("Bersifat Palindrome");
    } else {
      print("Tidak Bersifat Palindrome");
    }
  }
}

bool isPalindrome(String text) {
  // Menghapus spasi dan mengubah huruf menjadi huruf kecil
  String cleanedText = text.replaceAll(RegExp(r'\s+'), '').toLowerCase();

  // Membalik teks
  String reversedText = cleanedText.split('').reversed.join();

  // Membandingkan teks asli dengan teks yang dibalik
  return cleanedText == reversedText;
}
