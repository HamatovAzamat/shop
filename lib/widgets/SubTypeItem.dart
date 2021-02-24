import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/sub_type.dart';

class SubTypeItem extends StatelessWidget {

  final Subtype subtype;

  SubTypeItem(this.subtype);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
          subtype.name,
          style: TextStyle(fontSize: 20,),
          textAlign: TextAlign.center),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.purple,
          width: 3.0,
        ),
      ),
      color: Colors.white,
      textColor: Colors.purple,

    );
  }
}