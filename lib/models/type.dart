import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Type {
  final String name;
  final int id;

  Type({@required this.name, @required this.id}) {}

  void addType(){
    const url = 'https://shopapp-c9ee4-default-rtdb.firebaseio.com/type.json';
    http.post(url, body: json.encode({

    })).then((response) {

    }
    );
  }
}
