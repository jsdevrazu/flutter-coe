class Products {
  bool? success;
  String? message;
  List<Data>? data;

  Products({this.success, this.message, this.data});

  Products.fromJson(Map<String, dynamic> json) {
    if (json["success"] is bool) {
      success = json["success"];
    }
    if (json["message"] is String) {
      message = json["message"];
    }
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcate? subcate;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? colors;
  String? size;
  List<Images>? images;
  int? v;
  bool? inWishlist;

  Data(
      {this.id,
      this.onSale,
      this.salePercent,
      this.sold,
      this.sliderNew,
      this.sliderRecent,
      this.sliderSold,
      this.date,
      this.title,
      this.categories,
      this.subcate,
      this.shop,
      this.price,
      this.saleTitle,
      this.salePrice,
      this.description,
      this.colors,
      this.size,
      this.images,
      this.v,
      this.inWishlist});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["on_sale"] is bool) {
      onSale = json["on_sale"];
    }
    if (json["sale_percent"] is int) {
      salePercent = json["sale_percent"];
    }
    if (json["sold"] is int) {
      sold = json["sold"];
    }
    if (json["slider_new"] is bool) {
      sliderNew = json["slider_new"];
    }
    if (json["slider_recent"] is bool) {
      sliderRecent = json["slider_recent"];
    }
    if (json["slider_sold"] is bool) {
      sliderSold = json["slider_sold"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["categories"] is Map) {
      categories = json["categories"] == null
          ? null
          : Categories.fromJson(json["categories"]);
    }
    if (json["subcate"] is Map) {
      subcate =
          json["subcate"] == null ? null : Subcate.fromJson(json["subcate"]);
    }
    if (json["shop"] is Map) {
      shop = json["shop"] == null ? null : Shop.fromJson(json["shop"]);
    }
    if (json["price"] is String) {
      price = json["price"];
    }
    if (json["sale_title"] is String) {
      saleTitle = json["sale_title"];
    }
    if (json["sale_price"] is String) {
      salePrice = json["sale_price"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["colors"] is String) {
      colors = json["colors"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["images"] is List) {
      images = json["images"] == null
          ? null
          : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    }
    if (json["__v"] is int) {
      v = json["__v"];
    }
    if (json["in_wishlist"] is bool) {
      inWishlist = json["in_wishlist"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["on_sale"] = onSale;
    _data["sale_percent"] = salePercent;
    _data["sold"] = sold;
    _data["slider_new"] = sliderNew;
    _data["slider_recent"] = sliderRecent;
    _data["slider_sold"] = sliderSold;
    _data["date"] = date;
    _data["title"] = title;
    if (categories != null) {
      _data["categories"] = categories?.toJson();
    }
    if (subcate != null) {
      _data["subcate"] = subcate?.toJson();
    }
    if (shop != null) {
      _data["shop"] = shop?.toJson();
    }
    _data["price"] = price;
    _data["sale_title"] = saleTitle;
    _data["sale_price"] = salePrice;
    _data["description"] = description;
    _data["colors"] = colors;
    _data["size"] = size;
    if (images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    _data["__v"] = v;
    _data["in_wishlist"] = inWishlist;
    return _data;
  }
}

class Images {
  String? id;
  String? filename;
  String? url;

  Images({this.id, this.filename, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["filename"] is String) {
      filename = json["filename"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["filename"] = filename;
    _data["url"] = url;
    return _data;
  }
}

class Shop {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;
  int? v;

  Shop(
      {this.id,
      this.isActive,
      this.createdAt,
      this.name,
      this.description,
      this.shopemail,
      this.shopaddress,
      this.shopcity,
      this.userid,
      this.image,
      this.v});

  Shop.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["is_active"] is bool) {
      isActive = json["is_active"];
    }
    if (json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["shopemail"] is String) {
      shopemail = json["shopemail"];
    }
    if (json["shopaddress"] is String) {
      shopaddress = json["shopaddress"];
    }
    if (json["shopcity"] is String) {
      shopcity = json["shopcity"];
    }
    if (json["userid"] is String) {
      userid = json["userid"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["__v"] is int) {
      v = json["__v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["is_active"] = isActive;
    _data["created_at"] = createdAt;
    _data["name"] = name;
    _data["description"] = description;
    _data["shopemail"] = shopemail;
    _data["shopaddress"] = shopaddress;
    _data["shopcity"] = shopcity;
    _data["userid"] = userid;
    _data["image"] = image;
    _data["__v"] = v;
    return _data;
  }
}

class Subcate {
  String? id;
  String? date;
  String? name;
  String? parentid;
  int? v;

  Subcate({this.id, this.date, this.name, this.parentid, this.v});

  Subcate.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["parentid"] is String) {
      parentid = json["parentid"];
    }
    if (json["__v"] is int) {
      v = json["__v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["date"] = date;
    _data["name"] = name;
    _data["parentid"] = parentid;
    _data["__v"] = v;
    return _data;
  }
}

class Categories {
  String? id;
  String? type;
  String? date;
  String? name;
  String? image;
  int? v;

  Categories({this.id, this.type, this.date, this.name, this.image, this.v});

  Categories.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["__v"] is int) {
      v = json["__v"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["type"] = type;
    _data["date"] = date;
    _data["name"] = name;
    _data["image"] = image;
    _data["__v"] = v;
    return _data;
  }
}
