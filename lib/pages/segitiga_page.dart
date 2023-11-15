import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage ({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Segitiga Page"),
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/segitiga.png",
              height: 110,
            ),
            Text("Persegi Panjang"),
            Text(
                "Persegi Adalah Bangun datar turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                onChanged: (value) {
                  _segitigaController.a = int.parse(value);

                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Alas",
                    hintText: "Masukkan Alas",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))

                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                onChanged: (value) {

                  _segitigaController.t = int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Tinggi",
                    hintText: "Masukkan Tinggi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))

                ),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      _segitigaController.hitungLuas();

                    },
                    child: Text(
                      "Hitung Luas", style: TextStyle(color: Colors.white),)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    onPressed: () {
                      _segitigaController.hitungKeliling();
                    },
                    child: Text("Hitung Keliling",
                      style: TextStyle(color: Colors.white),)),
              ],
            ),
            Obx(
                    () =>
                    Text(
                      _segitigaController.hasil.value,
                      style: TextStyle(
                          color: _segitigaController.isHitungLuas.value
                              ? Colors.deepPurple
                              :Colors.orange
                      ),))
          ],
        ));
  }
}
