
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/userData.dart';


class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Last Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userData.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Phone Number: ${userData.phoneNumber}', style: TextStyle(fontSize: 20)),
            Text('Nic: ${userData.nic}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
