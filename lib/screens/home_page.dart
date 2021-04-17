import 'package:flutter/cupertino.dart';
import 'package:shop_app/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/categories_screen.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../models/order.dart';
import 'order_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int bottomCurrentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              'Главная',
              textAlign: TextAlign.end,
            ),
            actions: <Widget>[
              PopupOptionmenu(),
            ],
            pinned: true,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              background: MyFlexibleSpaceBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.all(25),
                child: ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Get all products',
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      ProductController pc = Get.put(ProductController());
                      pc.getAllProducts();
                    },
                  ),
                ),
              ),
              /*Container(
                padding: EdgeInsets.all(25),
                child: ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Посмотреть мой заказ',
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Get.to(OrderScreen());
                      *//*Route route = MaterialPageRoute(
                        builder: (context) => CategoriesScreen());
                    Navigator.push(context, route);*//*
                    },
                  ),
                ),
              ),*/
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Адрес: г. Давлеканово, ул.Ленина, 13\n Контактный телефон: +79638990294',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Image.network(
                  'https://sun9-47.userapi.com/impf/NYihzO5cDbP2Po0peYdOr_58DBzJxngvkXVH2g/KIUNtjjcEWk.jpg?size=811x1080&quality=96&sign=be3811d94de9d022a46de4139fedd173&type=album',
                  fit: BoxFit.cover),
              SizedBox(
                height: 10,
              ),
              Image.network(
                  'https://sun9-68.userapi.com/impf/DYJ0ELq7m7wFSc9Rux1JylHACmz0KL3y_qr9rw/HL_7-raLP_o.jpg?size=811x1080&quality=96&sign=c5185e456da12ac3a4ce9ba5b7f5c9bd&type=album',
                  fit: BoxFit.cover),
              SizedBox(
                height: 10,
              ),
              Image.network(
                  'https://sun9-23.userapi.com/impf/dwDsJeZRK9osce9fBpoh7Y3047KIpxNvyAmdLA/8QUaTNZSLys.jpg?size=811x1080&quality=96&sign=3ab293570e0832f19b82112b44f9f661&type=album',
                  fit: BoxFit.cover),
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(bottomCurrentIndex),
    );
  }
}

class MyFlexibleSpaceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://sun9-14.userapi.com/impf/acHkecCn7V5QWqRMOXlv2pdBJ3cWQUhfSEDkBg/m1Zx_HH8fhg.jpg?size=1280x961&quality=96&sign=babb8401622e768de641f487d3a1fe20&type=album',
        fit: BoxFit.cover);
  }
}

enum MenuOptions { Send, Draft, Discard }

class PopupOptionmenu extends StatelessWidget {
  const PopupOptionmenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOptions>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOptions>>[
          PopupMenuItem(
            child: Text('Перейти к выбору товара'),
            value: MenuOptions.Send,
          ),
          PopupMenuItem(
            child: Text('Местоположение'),
            value: MenuOptions.Send,
          ),
          PopupMenuItem(
            child: Text('Информация о персонале'),
            value: MenuOptions.Send,
          )
        ];
      },
    );
  }
}
