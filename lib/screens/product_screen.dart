import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/product.dart';
import '../models/order.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  ProductScreen(this.product);

  void addProductToCart(context) {
    TextEditingController _quantityController = TextEditingController();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Text(
                  'Введите количество товара',
                  textAlign: TextAlign.center,
                ),
                TextField(
                  maxLength: 3,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: _quantityController,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: '1234567890',
                    hintStyle: TextStyle(
                      color: Colors.black12,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                      child: Text(
                        'Добавить в заказ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue[900],
                      onPressed: () {
                        int value = int.parse(_quantityController.text);
                        print(value.toString());
                        OrderItem current = new OrderItem(
                            product: this.product, quantity: value);
                        allProducts.add(current);

                        Navigator.pop(context);
                        Fluttertoast.showToast(
                          msg: 'Добавлено ${value.toString()} штук',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                        );
                      }),
                ),
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () => addProductToCart(context),
          ),
        ],
        title: Text(
          product.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.imageUrl,
              ),
            ),
          ),
          Text(
            product.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
          Divider(
            height: 25.0,
          ),
          Text(
            'Цена товара: ${product.price.toString()} руб.',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              child: Text('Добавить в заказ',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.blue[900],
              textColor: Colors.white,
              onPressed: () => addProductToCart(context),
          ),
        ],
      ),
    );
  }
}
