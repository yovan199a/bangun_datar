import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Column(
              children: [
                Image.asset("assets/persegi.png",height: 110,),
                Text("Persegi"),
              ],
            ),
          ),
          CustomMenu(ImageAssets: "assets/persegi.png",title: "perseGi",),
          CustomMenu(ImageAssets: "assets/segitiga.png",title: "Segitiga",),


        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.ImageAssets, required this.title,
  });
  final String ImageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.green
      ),
      child: Column(
        children: [
          Image.asset("assets/segitiga.png",height: 110,),

          Text("Segitiga"),
        ],
      ),
    );
  }
}
