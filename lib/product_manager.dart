import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
    super.initState();
    
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
              margin: EdgeInsets.all(10.0),
              child: ProductControl(_addProduct),
              ),
              Expanded(child: Products(_products)),
              ]);
  }
}