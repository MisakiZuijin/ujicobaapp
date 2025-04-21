import 'package:flutter/material.dart';
import 'package:ujicobaapp/list_screen.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key, required this.nama});

  final String nama;

  String getUsernameFromEmail(String email) {
    return email.split('@')[0];
  }

  @override
  Widget build(BuildContext context) {
    final String username = getUsernameFromEmail(nama);

    return Scaffold(
      appBar: AppBar(title: Text('Profile Screen')),
      body: Center(
        child: SingleChildScrollView(
          // Menambahkan scroll agar bisa lihat semua konten
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    width: 325,
                    height: 325,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/image/fotoku.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade700,
                      ),
                      child: Icon(Icons.edit, color: Colors.white, size: 25),
                    ),
                  ),
                  Positioned(
                    bottom: -100,
                    child: Column(
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'TI23A2',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ), // Ruang setelah Stack biar tombol gak tabrakan
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'List Mahasiswa',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
