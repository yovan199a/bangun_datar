import 'package:bangun_datar_app/controller/persegipj_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegipjPage extends StatelessWidget {
  PersegipjPage({Key? key}) : super(key: key);
  final PersegiPjController _persegiPjController = Get.put(PersegiPjController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Persegi Panjang Page"),
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/p panjang.png",
              height: 110,
            ),
            Text("Persegi Panjang"),
            Text(
                "Persegi Adalah Bangun datar turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                onChanged: (value) {
                  _persegiPjController.p = int.parse(value);

                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Panjang",
                    hintText: "Masukkan Panjang",
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

                  _persegiPjController.l = int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Lebar",
                    hintText: "Masukkan Lebar",
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
                      _persegiPjController.hitungLuas();
                    },
                    child: Text(
                      "Hitung Luas", style: TextStyle(color: Colors.white),)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    onPressed: () {
                      _persegiPjController.hitungKeliling();
                    },
                    child: Text("Hitung Keliling",
                      style: TextStyle(color: Colors.white),)),
              ],
            ),
            Obx(
                    () =>
                    Text(
                      _persegiPjController.hasil.value,
                      style: TextStyle(
                          color: _persegiPjController.isHitungLuas.value
                              ? Colors.deepPurple
                              :Colors.orange
                      ),))
          ],
        ));
  }
}
