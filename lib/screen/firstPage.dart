import 'package:flutter/material.dart';
import 'package:flutterprovider/screen/secondScreen.dart';
import 'package:provider/provider.dart';
import '../provider/userData.dart';


class FirstPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final phoneNumber = _phoneController.text;

                // Save data using provider
                Provider.of<UserData>(context, listen: false).setNamePhoneNumber(name, phoneNumber);

                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
