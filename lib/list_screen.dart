import 'package:flutter/material.dart';
import 'stack_screen.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> mahasiswa = [
    'Rafael Theo Santoso',
    'Vhereyga Putra Pradana',
    'Nur Rahman Saleh',
    'Aji Kia Ramadhani',
    'Muhammad Noviyanto',
    'Valen Purwaixna Saputra',
    'Rafael Theo Santoso',
    'Vhereyga Putra Pradana',
    'Nur Rahman Saleh',
    'Aji Kia Ramadhani',
    'Muhammad Noviyanto',
    'Valen Purwaixna Saputra',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text(
          'List Nama Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade500,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackScreen()),
                  );
                },
                icon: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: mahasiswa.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Icon dalam lingkaran
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade700.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      mahasiswa[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
