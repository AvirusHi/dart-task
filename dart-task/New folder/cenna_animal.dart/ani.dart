import 'dart:io';

class Animal { // SuperClass
  String name;

  Animal(this.name);

  void speak() {
    print("$name Bersuara.");
  }
}

class Cat extends Animal { // SubClass
  Cat(String name) : super(name); // Syarat untuk memanggil variable instance pada SuperCLass dengan KeyWord "super"

  // Override method speak dari superclass
  @override
  void speak() {
    print("$name mendengkur: Purr..");
  }
}

void main() {
  stdout.write("Masukkan nama Kucing: "); // Untuk pesan inputan di Terminal
  String? catName = stdin.readLineSync(); // Untuk membaca data yang diinputkan pada Terminal

  if (catName != null && catName.isNotEmpty) { // apabila ada null function, itu tanda nya tidak boleh kosong
    Cat myCat = Cat(catName); // Membuat objek Cat dengan nama yang diinput
    myCat.speak(); // Memanggil method speak yang telah di-override
  } else {
    print("Nama Kucing tidak boleh kosong");
  }
}
