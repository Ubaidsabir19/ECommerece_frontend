class BrandData {
  List<Brand>? brand;

  BrandData({this.brand});

  BrandData.fromJson(Map<String, dynamic> json) {
    if (json['Brand'] != null) {
      brand = <Brand>[];
      json['Brand'].forEach((v) {
        brand!.add(new Brand.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brand != null) {
      data['Brand'] = this.brand!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Brand {
  String? name;
  List<Price>? price;
  var toggle = false;
  int counter = 1;

  Brand({this.name, this.price});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['price'] != null) {
      price = <Price>[];
      json['price'].forEach((v) {
        price!.add(new Price.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.price != null) {
      data['price'] = this.price!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Price {
  int? range;
  int? tax;

  Price({this.range, this.tax});

  Price.fromJson(Map<String, dynamic> json) {
    range = json['range'];
    tax = json['tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['range'] = this.range;
    data['tax'] = this.tax;
    return data;
  }
}
