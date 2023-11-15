import 'package:get/get.dart';

class PersegiPjController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int p = 0;
  int l = 0;
  final hasil = "".obs;


  void hitungLuas(){
    int hitung = p*l;
    hasil.value = "Hasil Perhitungan dari $p x $l = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung1 = p+p+l+l;
    hasil.value = "Hasil dari Keliling Persegi panjang yang Mempunyai panjang $p dan lebar $l = $hitung1";
    isHitungLuas.value = false;
  }
}