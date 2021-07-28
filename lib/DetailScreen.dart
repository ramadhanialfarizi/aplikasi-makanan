import 'package:aplikasiku/buyScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aplikasiku/data/data.dart';

class DetailScreen extends StatelessWidget {
  final DataFood food;

  DetailScreen({@required this.food});

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
              Gambar(gambar: food),
              Detail(detail: food),
              Tombol(tombol: food),
            ],
          ),
        ),
      ),
    );
  }
}

//================ gambar ==================================================
class Gambar extends StatelessWidget {
  final DataFood gambar;

  Gambar({@required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(gambar.imageAssets),
        ],
      ),
    );
  }
}

// ============ Detail =======================================================
class Detail extends StatelessWidget {
  final DataFood detail;

  Detail({@required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              detail.nama,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Staatliches',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              detail.harga,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              detail.description,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ========= tombol ============================================================
class Tombol extends StatelessWidget {
  final DataFood tombol;

  Tombol({@required this.tombol});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(9.0),
            width: 2000,
            child: OutlinedButton(
              child: Text('Beli'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuyScreen(
                    food: tombol,
                  );
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
