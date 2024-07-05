import 'package:flutter/material.dart';
import 'package:tukang_com/navbar.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Ubah warna latar belakang menjadi putih
        title: Text(
          'Akun',
          style: TextStyle(color: Colors.black), // Ubah warna teks menjadi hitam
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AccountDetails(
              name: 'Narendra Yudan',
              email: 'nydn@gmail.com',
              phone: '0812345678',
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[200],
              ),
              child: Column(
                children: <Widget>[
                  CustomRowWithIcon(
                    text: 'Alamat',
                    icon: Icons.location_on,
                  ),
                  SizedBox(height: 10.0),
                  CustomRowWithIcon(
                    text: 'Ketentuan Layanan',
                    icon: Icons.public,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika keluar 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Ubah warna tombol
                  minimumSize: Size(50, 50),
                ),
                child: Text('Keluar'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(selectedItem: 3),
    );
  }
}

class AccountDetails extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  AccountDetails({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AccountDetail(title: 'Name', detail: name),
          SizedBox(height: 10.0),
          AccountDetail(title: 'Email', detail: email),
          SizedBox(height: 10.0),
          AccountDetail(title: 'Phone', detail: phone),
        ],
      ),
    );
  }
}

class AccountDetail extends StatelessWidget {
  final String title;
  final String detail;

  AccountDetail({required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Text(
            detail,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRowWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  CustomRowWithIcon({required this.text, required this.icon});

  @override 
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 24.0,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
