import 'kandungan_makanan.dart';

class DaftarMakanan {
  String name;
  String imageAsset;
  String kategori;
  Nutrition kandunganMakanan;

  DaftarMakanan(
      {required this.name, required this.imageAsset, required this.kategori, required this.kandunganMakanan});
}

List<DaftarMakanan> pencarianMakanan = [];

var daftarMakanan = [
  DaftarMakanan(
      name: 'Tomat', imageAsset: 'assets/images/tomat.jpg', kategori: 'sayur',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)
  ),
  DaftarMakanan(
      name: 'Ayam', imageAsset: 'assets/images/ayam.jpg', kategori: 'daging',
kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Apel', imageAsset: 'assets/images/apel.jpeg', kategori: 'buah',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10) ),
  DaftarMakanan(
      name: 'Bebek', imageAsset: 'assets/images/bebek.jpg', kategori: 'daging',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Jeruk', imageAsset: 'assets/images/jeruk.jpg', kategori: 'buah',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Kambing',
      imageAsset: 'assets/images/kambing.jpg',
      kategori: 'daging',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Mangga',
      imageAsset: 'assets/images/mangga.jpeg',
      kategori: 'buah',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Pepaya', imageAsset: 'assets/images/pepaya.jpg', kategori: 'buah',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Sapi', imageAsset: 'assets/images/sapi.jpg', kategori: 'daging',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Sawi', imageAsset: 'assets/images/sawi.jpg', kategori: 'sayur',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Terong',
      imageAsset: 'assets/images/terong.jpg',
      kategori: 'sayur',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
  DaftarMakanan(
      name: 'Timun', imageAsset: 'assets/images/timun.jpg', kategori: 'sayur',
      kandunganMakanan: Nutrition(energi: 10, serat: 10, air: 10, lemak: 10, protein: 10, karbohidrat: 10)),
];
