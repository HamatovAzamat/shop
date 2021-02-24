import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import '../models/type.dart';

class TypeItem extends StatelessWidget {
  Type type;

  TypeItem(this.type);

  @override
  Widget build(BuildContext context) {
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
              color: Colors.purple,
              width: 3.0,
            ),
          ),
          color: Colors.white,
          textColor: Colors.purple,
          onPressed: () {
            Route route =
            MaterialPageRoute(builder: (context) => ProductOverviewScreen(type));
            Navigator.push(context, route);
            /*showDialog(
                context: context,
                builder: (BuildContext context) => new Dialog(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: ListView.builder(
                          itemBuilder: (ctx, i) {

                          }
                        ),
                      ),
                    ));*/
          }
          ),
    );
  }
}
