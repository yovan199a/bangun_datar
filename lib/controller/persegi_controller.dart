import 'package:get/get.dart';

class PersegiController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int sisi = 0;
  final hasil = "".obs;


  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan dari $sisi x $sisi = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung1 = sisi*4;
    hasil.value = "Hasil dari Keliling Persegi yang Mempunyai sisi $sisi = $hitung1";
    isHitungLuas.value = false;
  }
}