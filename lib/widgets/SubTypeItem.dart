import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/sub_type.dart';
import '../screens/product_overview_screen.dart';

class SubTypeItem extends StatelessWidget {
  final Subtype subtype;

  SubTypeItem(this.subtype);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(subtype.name,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.blue[900],
          width: 3.0,
        ),
      ),
      color: Colors.white,
      textColor: Colors.blue[900],
      onPressed: () {
        /*Route route = MaterialPageRoute(
            builder: (context) => ProductOverviewScreen(type));
        Navigator.push(context, route);*/
      },
    );
  }
}
