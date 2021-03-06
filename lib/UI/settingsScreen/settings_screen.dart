import 'package:flutter/material.dart';

import '../../Consts/text_styles.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 70.0,
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            height: 20.0,
            width: 147.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          SizedBox(height: 5.0,),
          Container(
            height: 20.0,
            width: 200.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          SizedBox(height: 5.0,),
          Container(
            height: 20.0,
            width: 230.0,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
