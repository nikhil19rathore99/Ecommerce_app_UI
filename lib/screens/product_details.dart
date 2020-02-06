import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_name;
  final product_image;
  final product_oldPrice;
  final product_price;

  ProductDetails({
    this.product_name,
    this.product_image,
    this.product_oldPrice,
    this.product_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => print('search'),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => print('shopping_cart'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_image),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_oldPrice}",
                          style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 20.0),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_price}",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the size'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                    color: Colors.white,
                    elevation: 0.2,
                    textColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Size",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Color'),
                          content: Text('Pick the color'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Color",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Quantity'),
                          content: Text('Choose the quantity'),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      );
                    },
                    color: Colors.white,
                    elevation: 0.2,
                    textColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Qty",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40,
                width: 250,
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text(
                    'Buy now',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.red,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              'Product Description',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0),
            child: Row(
              children: <Widget>[
                Text('Product Name', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),),
                SizedBox(width: 20.0),
                Text(widget.product_name, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0),
            child: Row(
              children: <Widget>[
                Text('Product Brand', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
                SizedBox(width: 20.0),
                Text("${widget.product_name} X", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0),
            child: Row(
              children: <Widget>[
                Text('Product Condition', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
                SizedBox(width: 20.0),
                Text('New', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
