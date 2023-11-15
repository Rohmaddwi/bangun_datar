

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegipanjangController = Get.put(PersegiPanjangController());
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
            "asset/persegipanjang.jpg",
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi Panjang"),
          ),
          Text(
              "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegipanjangController.panjang=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'panjang',
                  hintText: 'hint',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegipanjangController.lebar=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'lebar',
                  hintText: 'hint',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  "Hitung Luas",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  _persegipanjangController.hitungLuas();

                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                ),
                child: Text(
                  "Hitung Keliling",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  _persegipanjangController.hitungKeliling();

                },
              ),
            ],
          ),

          Obx(() => Text(_persegipanjangController.hasil.value,
            style: TextStyle(
                color: _persegipanjangController.isHitungLuas.value
                    ? Colors.redAccent
                    : Colors.greenAccent),))
        ],
      ),
    );
  }
}

