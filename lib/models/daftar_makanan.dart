class DaftarMakanan {
  String name;
  String imageAsset;
  String kategori;

  DaftarMakanan(
      {required this.name, required this.imageAsset, required this.kategori});
}

List<DaftarMakanan> pencarianMakanan = [];

var daftarMakanan = [
  DaftarMakanan(
      name: 'Tomat', imageAsset: 'assets/images/tomat.jpg', kategori: 'sayur'),
  DaftarMakanan(
      name: 'Ayam', imageAsset: 'assets/images/ayam.jpg', kategori: 'daging'),
  DaftarMakanan(
      name: 'Apel', imageAsset: 'assets/images/apel.jpeg', kategori: 'buah'),
  DaftarMakanan(
      name: 'Bebek', imageAsset: 'assets/images/bebek.jpg', kategori: 'daging'),
  DaftarMakanan(
      name: 'Jeruk', imageAsset: 'assets/images/jeruk.jpg', kategori: 'buah'),
  DaftarMakanan(
      name: 'Kambing',
      imageAsset: 'assets/images/kambing.jpg',
      kategori: 'daging'),
  DaftarMakanan(
      name: 'Mangga',
      imageAsset: 'assets/images/mangga.jpeg',
      kategori: 'buah'),
  DaftarMakanan(
      name: 'Pepaya', imageAsset: 'assets/images/pepaya.jpg', kategori: 'buah'),
  DaftarMakanan(
      name: 'Sapi', imageAsset: 'assets/images/sapi.jpg', kategori: 'daging'),
  DaftarMakanan(
      name: 'Sawi', imageAsset: 'assets/images/sawi.jpg', kategori: 'sayur'),
  DaftarMakanan(
      name: 'Terong',
      imageAsset: 'assets/images/terong.jpg',
      kategori: 'sayur'),
  DaftarMakanan(
      name: 'Timun', imageAsset: 'assets/images/timun.jpg', kategori: 'sayur'),
];
