import 'package:flutter/material.dart';

void main() {
  runApp(NotificationPage());
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Mengatur warna hijau pada AppBar
          title: Text('Notifications'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
          itemCount: 5, // Jumlah notifikasi
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification $index'),
              subtitle: Text('This is a notification message.'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Aksi ketika notifikasi ditekan
                print('Notification $index pressed');
              },
            );
          },
        ),
      ),
    );
  }
}
