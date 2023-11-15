

import 'package:bangun_datar_app/controller/jajargenjang_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';

class JajarGenjangPage extends StatelessWidget {
  JajarGenjangPage({super.key});
  final JajarGenjangController _jajargenjangController = Get.put(JajarGenjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Jajar Genjang Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/jajargenjang.jpg",
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("JajarGenjang"),
          ),
          Text(
              "Jajar genjang atau jajaran genjang (bahasa Inggris: parallelogram) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang rusuk yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki dua pasang sudut yang masing-masing sama besar dengan sudut di hadapannya."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _jajargenjangController.alas=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'alas',
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
                _jajargenjangController.tinggi=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'tinggi',
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
                _jajargenjangController.b=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'b',
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
                  _jajargenjangController.hitungLuas();

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
                  _jajargenjangController.hitungKeliling();

                },
              ),
            ],
          ),

          Obx(() => Text(_jajargenjangController.hasil.value,
            style: TextStyle(
                color: _jajargenjangController.isHitungLuas.value
                    ? Colors.green
                    : Colors.yellowAccent),))
        ],
      ),
    );
  }
}

