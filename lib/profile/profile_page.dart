import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.account_circle,
              size: 80,
              color: Colors.blueGrey,
            ),
            const SizedBox(height: 8.0),
            Text(
              "Deni Trio Saputra",
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Mobile Computing Lecturer",
              style: const TextStyle(
                  color: Colors.grey
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Lihat Portofolio")
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}