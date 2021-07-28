import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplikasiku/data/data.dart';

class BuyScreen extends StatefulWidget {
  final DataFood food;

  BuyScreen({@required this.food});

  @override
  _BuyScreenState createState() => _BuyScreenState(data: food);
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController _nama = TextEditingController();
  TextEditingController _pesanan = TextEditingController();
  TextEditingController _alamat = TextEditingController();

  final DataFood data;

  _BuyScreenState({@required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RamFood',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
//
                    Image.asset(data.imageAssets),
//
                    TextField(
                      controller: _nama,
                      decoration: InputDecoration(
                        hintText: 'Nama Anda',
                        labelText: 'Masukan nama pemesan',
                      ),
                    ),
                    TextField(
                      controller: _pesanan,
                      decoration: InputDecoration(
                        hintText: 'Jumlah Pesanan',
                        labelText: 'Masukan Jumlah Pesanan',
                      ),
                    ),
                    TextField(
                      controller: _alamat,
                      decoration: InputDecoration(
                        hintText: 'Alamat Pesanan',
                        labelText: 'Masukan Alamat Pesanan',
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(9),
                      width: 2000,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                    'Nama Pemesan : ${_nama.text}, Jumlah Pesanan : ${_pesanan.text}, Alamat Pemesan : ${_alamat.text}. Terima kasih telah menggunakan layanan kami'),
                              );
                            },
                          );
                        },
                        child: Text('Beli'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
