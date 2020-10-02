class Product{
  final int price;
  final String id, title, category, image, subTitle, description;

  Product({this.id,this.price, this.title, this.category, this.image,
      this.subTitle, this.description});

  factory Product.fromJson(Map<String, dynamic> json){
    return Product (
      id: json["id"],
      price: json["price"],
      title: json["title"],
      category: json["category"],
      image: json["image"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}
Product product = Product(
  id: "1",
  price: 1600,
  title: "Wood Frame",
  image:"https://i.imgur.com/sI4GvE6.png",
  category: "Chair",
  subTitle: "Tieton Armchair",
  description: "This is the chair that is made of Wood and this Armchair is imported from England",
);
