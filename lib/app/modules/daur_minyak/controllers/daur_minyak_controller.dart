import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_alamat_model.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_minyak_model.dart';
import 'package:daur_minyak_getx/app/modules/daur_minyak/models/daur_waktu_model.dart';
import 'package:get/get.dart';

class DaurMinyakController extends GetxController {
  RxBool isFind = false.obs;
  RxInt selectedValue = 1.obs;
  RxInt groupValue = 0.obs;

  RxList<DaurMinyakModel> items = [
    DaurMinyakModel(
      title: "Minyak Goreng",
      image: "assets/icon-minyak.png",
      isSelected: false,
      qty: 0,
      price: 5000,
    ),
    DaurMinyakModel(
      title: "Oli Bekas",
      image: "assets/icon-oli.png",
      isSelected: false,
      qty: 0,
      price: 3000,
    ),
  ].obs;

  List<DaurAlamatModel> itemsAlamat = [
    DaurAlamatModel(
      jalan: "Jl. Manunggal Perumahan Cahaya Mata Bumi Blok G 14",
      kecamatan: "Tampan",
      kota: "Pekanbaru",
      provinsi: "Riau",
      kodePos: "13410",
      tipe: "Rumah",
      noHp: "081234567890",
      isSelected: 1,
    ),
    DaurAlamatModel(
      jalan: "Jalan Raya Cipinang Besar Selatan",
      kecamatan: "Jatinegara",
      kota: "Jakarta Timur",
      provinsi: "DKI Jakarta",
      kodePos: "13410",
      tipe: "Kantor",
      noHp: "081234567890",
      isSelected: 2,
    ),
  ];

  List<DaurWaktuModel> waktus = [
    DaurWaktuModel(title: "08:00 - 09:00", id: 1),
    DaurWaktuModel(title: "09:00 - 10:00", id: 2),
    DaurWaktuModel(title: "10:00 - 11:00", id: 3),
    DaurWaktuModel(title: "11:00 - 12:00", id: 4),
    DaurWaktuModel(title: "12:00 - 13:00", id: 5),
    DaurWaktuModel(title: "13:00 - 14:00", id: 6),
    DaurWaktuModel(title: "14:00 - 15:00", id: 7),
    DaurWaktuModel(title: "15:00 - 16:00", id: 8),
    DaurWaktuModel(title: "16:00 - 18:00", id: 9),
    DaurWaktuModel(title: "19:00 - 21:00", id: 10),
  ];

  Future<void> initWaiting() async {
    isFind.value = false;
    Future.delayed(const Duration(seconds: 3), () {
      isFind.value = true;
    });
  }
}
