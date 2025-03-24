import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 58, 58),
        title: Text(
          'Selamat Datang Di Aplikasi Saya!!!',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Worlds!!!', style: TextStyle(color: Colors.white)),
            Text('Hello Worlds!!!', style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello Worlds!!! ', style: TextStyle(color: Colors.white)),
                Icon(Icons.person),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.home), Icon(Icons.home), Icon(Icons.home)],
      ),
    );
  }
}
