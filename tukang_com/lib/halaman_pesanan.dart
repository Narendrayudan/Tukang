import 'package:flutter/material.dart';
import 'package:tukang_com/OrderContainer.dart';
import 'package:tukang_com/navbar.dart';
  
class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Ubah warna header menjadi putih
        title: Text(
          'Pesanan Dalam Proses',
          style: TextStyle(color: Colors.black), // Ubah warna teks header menjadi hitam
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.note, color: Colors.black), // Ubah warna ikon menjadi hitam
            onPressed: () {
              // Tambahkan logika notifikasi di sini
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          OrderContainer(
            title: 'PT Inka',
            description: 'Kereta',
            price: 'Rp 5.000.000.000',
            image: 'PTInka.jpg',
          ),
          OrderContainer(
            title: 'PT Cuntruction & Investmen',
            description: 'Baja Ringan',
            price: 'Rp 150.000.000',
            image: 'PTPP.png',
          ),
          OrderContainer(
            title: 'PT Nippon Paint',
            description: 'Cat Kaleng',
            price: 'Rp 200.000.000',
            image: 'PTNippon.png',
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(selectedItem: 1),
    );
  }

}
