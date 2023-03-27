class DetailCompare {
  String nama;
  String foto;
  String energi;
  String karbohidrat;
  String protein;
  String lemak;
  String air;
  String serat;

  DetailCompare({
    required this.nama,
    required this.foto,
    required this.energi,
    required this.karbohidrat,
    required this.protein,
    required this.lemak,
    required this.air,
    required this.serat,
  });
}

var detailCompareList = [
  DetailCompare(
      nama: 'Kentang',
      foto: 'assets/images/tomat.jpg',
      energi: '100',
      karbohidrat: '100',
      protein: '100',
      lemak: '100',
      air: '100',
      serat: '100'
  ),
  DetailCompare(
      nama: 'Nasi',
      foto: 'assets/images/timun.jpg',
      energi: '150',
      karbohidrat: '150',
      protein: '150',
      lemak: '150',
      air: '150',
      serat: '150'
  ),
];