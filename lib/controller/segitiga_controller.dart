import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int a = 0;
  int t = 0;
  final hasil = "".obs;


  void hitungLuas(){
    double hitung = a*t/2;
    hasil.value = "Hasil Perhitungan dari $a x $t = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung1 = a+a+t;
    hasil.value = "Hasil dari Keliling Persegi panjang yang Mempunyai panjang $a dan lebar $t = $hitung1";
    isHitungLuas.value = false;
  }
}