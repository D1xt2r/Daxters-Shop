import 'dart:ui';

import 'package:a/chat/chat.dart';
import 'package:a/detail/DetailScreen.dart';
import 'package:a/models/products.dart';
import 'package:a/profile/profile.dart';
import 'package:a/setting/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search ",
                      prefixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart, color: Colors.grey)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.grey))
              ],
            ),
          ),
          Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
            ],
          ),
          categories(),
          SectionSp(),
          SpecialOfferCard(),
          PopularP(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(demoProducts.length,
                    (index) => ProductP(product: demoProducts[index]))
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class ProductP extends StatelessWidget {
  const ProductP({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 15),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
              ),
              Row(
                children: [
                  Text("\₦${product.price}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue)),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, left: 15),
                    child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite, color: Colors.red))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PopularP extends StatelessWidget {
  const PopularP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Products",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () {},
                child: Text("See More", style: TextStyle(color: Colors.grey))),
          ),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 280,
                height: 117,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Image.asset("assets/images/electronics.png",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff343434).withOpacity(0.6),
                              Color(0xff343434).withOpacity(0.2)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 13),
                        child: Text.rich(
                          TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "Electronics",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 280,
                height: 117,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70, top: 5),
                        child: Image.asset("assets/images/cosmet.png",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff343434).withOpacity(0.6),
                              Color(0xff343434).withOpacity(0.2)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 13),
                        child: Text.rich(
                          TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "Cosmetics",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 280,
                height: 117,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 1),
                        child: Image.asset("assets/images/Image Banner 3.png",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff343434).withOpacity(0.6),
                              Color(0xff343434).withOpacity(0.2)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 13),
                        child: Text.rich(
                          TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "Fashion",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

class SectionSp extends StatelessWidget {
  const SectionSp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Specials for you",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          GestureDetector(
              onTap: () {},
              child: Text("See More", style: TextStyle(color: Colors.grey))),
        ],
      ),
    );
  }
}

class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories1 = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deals"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Games"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Gifts"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bills"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories1.length,
              (index) => CategoryC(
                  icon: categories1[index]["icon"],
                  text: categories1[index]["text"],
                  press: () {}))
        ]);
  }
}

class CategoryC extends StatelessWidget {
  const CategoryC({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 60,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset(icon),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
