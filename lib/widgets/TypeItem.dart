import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data.dart';
import 'SubTypeItem.dart';
import '../data.dart';
import '../screens/product_overview_screen.dart';
import '../models/type.dart';

class TypeItem extends StatelessWidget {
  Type type;

  TypeItem(this.type);

  @override
  Widget build(BuildContext context) {
    final filtredTypes = loadedSubtypes.where((subtype) {
      return (subtype.ownBy == type.id);
    }).toList();

    return ButtonTheme(
      minWidth: 200.0,
      height: 100,
      child: RaisedButton(
        child: Text(type.name,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center),
        elevation: 10,
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
          // if (type.id == 0) {
            Route route = MaterialPageRoute(
                builder: (context) => ProductOverviewScreen(type));
            Navigator.push(context, route);
          /*} else {
            showDialog(
              context: context,
              builder: (BuildContext context) => new Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  child: ListView.builder(
                      itemCount: filtredTypes.length,
                      itemBuilder: (ctx, i) {
                        return SubTypeItem(filtredTypes[i]);
                      }),
                ),
              ),*/
           
          })
    );
  }
}

