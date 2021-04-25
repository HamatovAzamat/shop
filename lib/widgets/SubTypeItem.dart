import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data.dart';
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
            fontSize: 15,
          ),
          textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.blue[900],
          width: 1.0,
        ),
      ),
      color: Colors.white,
      textColor: Colors.blue[900],
      onPressed: () {
        //Type owning_type = loadedTypes.where((type) => (type.id == subtype.ownBy));
        var owningType;
        for (int i = 0; i < loadedTypes.length; i++){
          if (loadedTypes[i].id == subtype.ownBy) {
            owningType = loadedTypes[i];
          }
        }
        Route route = MaterialPageRoute(
            builder: (context) => ProductOverviewScreen(owningType, subtype));
        Navigator.push(context, route);
      },
    );
  }
}
