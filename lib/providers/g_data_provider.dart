import 'dart:convert';
import 'dart:developer';

import 'package:e_commerece_store/services/brand_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class GlobalData extends ChangeNotifier {
  BrandData? items;
  int price = 0;
  int tax = 0;

  readJson() async {
    final String response = await rootBundle.loadString('images/sample.json');
    final data = await json.decode(response);
    items = BrandData.fromJson(data);
    print(items!.toJson());
    notifyListeners();
  }

  toggle(int index) {
    items!.brand![index].toggle = !items!.brand![index].toggle;
    notifyListeners();
  }

  decrement(int index) {
    if (items!.brand![index].counter < 1) {
      return;
    } else {
      items!.brand![index].counter--;
      if (items!.brand![index].counter == 0) {
        delete(index);
      }
    }
    notifyListeners();
  }

  increment(int index) {
    items!.brand![index].counter++;
    notifyListeners();
  }

  int Price() {
    int length = items!.brand!.length;
    price = 0;
    for (int i = 0; i < length; i++) {
      price +=
          (items!.brand![i].price![0].range ?? 1) * (items!.brand![i].counter);
    }
    return price;
  }

  int Tax() {
    int length = items!.brand!.length;
    tax = 0;
    for (int i = 0; i < length; i++) {
      tax += (items!.brand![i].price![0].tax ?? 1) * (items!.brand![i].counter);
    }
    return tax;
  }

  delete(int index) {
    items!.brand!.removeAt(index);
    notifyListeners();
  }

  int Length() {
    return items!.brand!.length;
  }
}
