class ProductModel{
  String? name;
  String? image;
  String? currentPrice;
  String? oldPrice;
  String? rating;
  bool isFavourite = false;

  ProductModel({this.name, this.currentPrice, this.oldPrice, this.rating, this.image, required this.isFavourite});

}

List<ProductModel> dummyProducts = [
  ProductModel(isFavourite: false, name: "CauliFlower", image: "https://previews.123rf.com/images/liyuanru/liyuanru1702/liyuanru170200389/75387553-cabbage-isolated-on-white-background.jpg", currentPrice: '\$50', oldPrice: '\$80', rating: "4.5",),
  ProductModel(isFavourite: false, name: "Bagueete Bread", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsqqVHC9y67kcrYT6A2q51AyzJaTzTYeXx7Q&usqp=CAU", currentPrice: '\$40', oldPrice: '\$60', rating: "5.0",),
  ProductModel(isFavourite: false,name: "Handwash",image: 'http://nearbyshop.in/images/detailed/11/image_121.png',currentPrice: '\$50',oldPrice: '\$40',rating: '4.0',),
  ProductModel(isFavourite: false ,name: 'Meat',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN4JtTvDMUWRmiET14vlCuWtAmkgyolUS3ag&usqp=CAU',currentPrice: '\$50',oldPrice: '\$60',rating: '4.0'),
  ProductModel(isFavourite: false, name: "Sunflower Oil", image: "https://www.pngitem.com/pimgs/m/666-6665329_sunflower-oil-png-plastic-cooking-oil-bottle-png.png", currentPrice: '\$65', oldPrice: '\$70', rating: "3.5",),
  ProductModel(isFavourite: false, name: "Potato Chip", image: "https://e7.pngegg.com/pngimages/292/367/png-clipart-potato-chips-potato-chips.png", currentPrice: '\$70', oldPrice: '\$90', rating: "4.0",),

];

List<ProductModel> prototype=[
  ProductModel(isFavourite: false ,name: 'Meat',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN4JtTvDMUWRmiET14vlCuWtAmkgyolUS3ag&usqp=CAU',currentPrice: '\$50',oldPrice: '\$60',rating: '4.0'),
  ProductModel(isFavourite: false, name: "Sunflower Oil", image: "https://www.pngitem.com/pimgs/m/666-6665329_sunflower-oil-png-plastic-cooking-oil-bottle-png.png", currentPrice: '\$65', oldPrice: '\$70', rating: "3.5",),
  ProductModel(isFavourite: false, name: "Potato Chip", image: "https://e7.pngegg.com/pngimages/292/367/png-clipart-potato-chips-potato-chips.png", currentPrice: '\$70', oldPrice: '\$90', rating: "4.0",),


];
class Productname{
  String? name;
  String? image;
  Productname({this.name,this.image});

}

List<Productname> dummydata=[
  Productname(name: 'Vegetable',image: 'https://cdn.filestackcontent.com/o7BjY6ZUQq2J1sTWvWyA'),
  Productname(name:'Fruit',image: 'https://media.istockphoto.com/photos/fruits-and-vegetables-picture-id1172183568'),
  Productname(name: 'Seafood',image: 'https://png.pngtree.com/png-vector/20201128/ourlarge/pngtree-seafood-platter-png-image_2455947.jpg'),
  Productname(name: 'Meat',image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkFr8Y8BQeol8W2Nev6yONqx09fKYQ0g18IA&usqp=CAU'),
];