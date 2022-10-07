import 'package:a/models/products.dart';
import 'package:flutter/material.dart';
import 'package:a/Home.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SizedBox(
          height: 20,
          width: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: FlatButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(),
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
      ),
    );
  }
}

class detailbody extends StatelessWidget {
  const detailbody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 200,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(product.images[0]),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDA {
  final Product product;

  ProductDA({required this.product});
}
