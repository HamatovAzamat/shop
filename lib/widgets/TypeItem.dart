import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data.dart';
import 'SubTypeItem.dart';
import '../data.dart';
import '../screens/product_overview_screen.dart';
import '../models/type.dart';

class TypeItem extends StatefulWidget {
  Type type;

  TypeItem(this.type);

  @override
  _TypeItemState createState() => _TypeItemState();
}

class _TypeItemState extends State<TypeItem> {
  double change = 15;
  bool _showSubtype = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filtredTypes = loadedSubtypes.where((subtype) {
      return (subtype.ownBy == widget.type.id);
    }).toList();

    final List emptyList = [];

    return Column(
        children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.blue[900],
                    width: 2,
                  ),
                borderRadius: BorderRadius.circular(12)
              ),
              width: double.infinity,
              child: ListTile(
                leading: Icon(Icons.assignment_outlined, color: Colors.blue[900], size: 20,),
                  title: Text(widget.type.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                      ),
                      textAlign: TextAlign.center),
                  trailing: (_showSubtype) ? Icon(Icons.remove) : Icon(Icons.add),
                  onTap: () {
                    if (widget.type.id == 0){
                      Route route = MaterialPageRoute(
                          builder: (context) => ProductOverviewScreen(widget.type, loadedSubtypes[0]));
                      Navigator.push(context, route);
                      _showSubtype = !_showSubtype;
                    }
                    setState(() {
                      _showSubtype = !_showSubtype;
                    });
                  }
              ),
            ),

          (_showSubtype) ? Column( children: filtredTypes.map((subtype) {
            return SubTypeItem(subtype);
          }).toList(),) : Column( children: emptyList.map((subtype) {
            return Text('');
          }).toList(),),
        ]
    );
  }
}

