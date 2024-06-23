import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/userData.dart';
import 'LastPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final _nicController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child:  TextField(
              controller: _nicController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
               final nic = _nicController.text;
               // Save data using provider
               Provider.of<UserData>(context, listen: false).setNicData(nic);
               Navigator.push(context, MaterialPageRoute(builder: (context) => LastPage()));
              }, child: Text(
              'Final Page'
            ),
            ),
          )
        ],
      ),
    );
  }
}
