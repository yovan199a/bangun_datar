import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:bangun_datar_app/pages/lingkaran_page.dart';
import 'package:bangun_datar_app/pages/persegipj_page.dart';
import 'package:bangun_datar_app/pages/segitiga_page.dart';
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
      body: ListView(
        children: [

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
            },
          child: CustomMenu(ImageAssets: "assets/persegi.png",title: "persegi",)
          ),
          Row(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegipjPage()));
                  },
                  child: CustomMenu(ImageAssets: "assets/p panjang.png",title: "persegi",)
              ),

              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                  },
                  child: CustomMenu(ImageAssets: "assets/segitiga.png",title: "segitiga",)
              ),

              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                  },
                  child: CustomMenu(ImageAssets: "assets/LINGKARANd.png",title: "Lingkaran",)
              ),
              Expanded(child: CustomMenu(ImageAssets: "assets/segitiga.png",title: "Segitiga",)),

            ],
          ),


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
          Image.asset(ImageAssets,height: 110,),

          Text(title),
        ],
      ),
    );
  }
}
