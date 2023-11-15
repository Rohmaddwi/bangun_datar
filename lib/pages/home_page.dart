import 'package:bangun_datar_app/pages/jajargenjangpage.dart';
import 'package:bangun_datar_app/pages/persegipage.dart';
import 'package:bangun_datar_app/pages/persegipanjangpage.dart';
import 'package:bangun_datar_app/pages/segitigapage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.shade300,
            title: Text(
              "Home Page", style: TextStyle(color: Colors.white),
            )),
        body: ListView(
        children: [
        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
        },
              child: CustomMenu(imageAssets: "asset/persegi.png",title: "Persegi")),
          Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                },
                child: CustomMenu(imageAssets: "asset/persegipanjang.jpg",title: "Persegi Panjang")),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SegitigaPage()));
                },
                child: CustomMenu(imageAssets: "asset/segitiga.png",title: "Segitiga")),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => JajarGenjangPage()));
                },
                child: CustomMenu(imageAssets: "asset/jajargenjang.jpg",title: "Jajar Genjang")),



      ],
    ),

        ],
    )
    );

  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical:8, horizontal:16),
      decoration: BoxDecoration(
      color: Colors.green
      ),
      child: Column(
        children: [
          Image.asset(
            imageAssets, height: 200, width: 200,
          ),
          Text(title),
        ],
      )
    );
  }
}
