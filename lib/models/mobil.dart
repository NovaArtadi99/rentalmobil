class Car {
  String platMobil;
  String namaMobil;
  String warna;
  String tipe;
  String tahun;
  DateTime tglPajak;
  String namaPemilik;
  String cc;
  String hargaSewa;
  bool status;
  String gambarMobil;
  DateTime tglCatat;
  // DateTime createdAt;
  // DateTime updatedAt;

  Car({
    required this.platMobil,
    required this.namaMobil,
    required this.warna,
    required this.tipe,
    required this.tahun,
    required this.tglPajak,
    required this.namaPemilik,
    required this.cc,
    required this.hargaSewa,
    required this.status,
    required this.gambarMobil,
    required this.tglCatat,
    // required this.createdAt,
    // required this.updatedAt,
  });

  static fromJson(json) {}
}
