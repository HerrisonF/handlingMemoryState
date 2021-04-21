class Product {
  String name;
  String image;


  Product({this.name, this.image});

  Product.fromJson(Map<String, dynamic> json) :
    name = json['name'],
  image = json['image'];

  Map<String, dynamic> toJSon(Product product) => <String,dynamic>{
    'name':product.name,
    'image':product.image,
  };

}