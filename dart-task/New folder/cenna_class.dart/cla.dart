// Definisi class Person
class Person {
  String nama;
  int usia;

  // Constructor untuk inisialisasi nama dan usia
  Person(this.nama, this.usia);

  // Method untuk menampilkan informasi/kalimat (opsional)
  void perkenalan() {
    print("Halo, nama saya $nama dan saya berusia $usia tahun.");
  }
}

void main() {
  // Membuat objek dari class Person
  Person orang1 = Person("Avi", 25);
  Person orang2 = Person("Cenna", 30);

  // Memanggil method perkenalan
  orang1.perkenalan(); // Output: Halo, nama saya Avi dan saya berusia 18 tahun.
  orang2.perkenalan(); // Output: Halo, nama saya Cenna dan saya berusia 24 tahun.
}
