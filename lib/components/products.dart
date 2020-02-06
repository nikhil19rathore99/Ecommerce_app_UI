import 'package:ecommerce_app/screens/product_details.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var productList = [
    {
      'name': 'Blazer Men',
      'image': 'images/products/blazer1.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Blazer Women',
      'image': 'images/products/blazer2.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Frock Dress',
      'image': 'images/products/dress1.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Frock Casuals',
      'image': 'images/products/dress2.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Party Heels',
      'image': 'images/products/hills1.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Casual Heels',
      'image': 'images/products/hills2.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Casual Pants',
      'image': 'images/products/pants1.jpg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Lower',
      'image': 'images/products/pants2.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'RedCheif Casuals',
      'image': 'images/products/shoe1.jpg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Skirt Casual',
      'image': 'images/products/skt1.jpeg',
      'oldPrice': 120,
      'price': 75
    },
    {
      'name': 'Party Skirt',
      'image': 'images/products/skt2.jpeg',
      'oldPrice': 120,
      'price': 75
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => BuildProductTile(
        product_name: productList[index]['name'],
        product_image: productList[index]['image'],
        product_oldPrice: productList[index]['oldPrice'],
        product_price: productList[index]['price'],
      ),
    );
  }
}

class BuildProductTile extends StatelessWidget {
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  const BuildProductTile(
      {this.product_image,
      this.product_oldPrice,
      this.product_price,
      this.product_name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails(
                  product_name: product_name,
                  product_image: product_image,
                  product_oldPrice: product_oldPrice,
                  product_price: product_price,
                ))),
            child: GridTile(
              footer: Container(
                height: 70,
                color: Colors.white54,
                child: ListTile(
                  leading: Container(
                    width: 70,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    '\$$product_price',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '\$$product_oldPrice',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(product_image, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
