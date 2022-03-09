// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sampleproject/main.dart';
import 'package:sampleproject/productmodel.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> _valueSetter;
  ProductScreen(this._valueSetter, {Key? key}) : super(key: key);

  List<ProductModel> products = [
    ProductModel(
      "name",
      50,
      "assets/pic1.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic2.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic3.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic4.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic5.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic6.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic7.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic8.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic9.jpg",
    ),
    ProductModel(
      "name",
      50,
      "assets/pic10.jpg",
    )
  ];
  String buttonName = "ADD TO CART";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      itemBuilder: (BuildContext, index) {
        return index == 0
            ? MyCarousel(
                dotSize: 2.0,
                dotColor: Colors.amber,
                indicatorBgPadding: 2.0,
                images: [
                  Image.asset(
                    "assets/carol1.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/carol2.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    "assets/carol3.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              )
            : SizedBox(
                height: 400,
                width: 250,
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 390,
                        child: Card(
                          elevation: 50.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              ClipRRect(
                                child: Image(
                                  image: AssetImage(products[index - 1].image),
                                  fit: BoxFit.cover,
                                  width: 250,
                                  height: 250,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  products[index].name,
                                  style: const TextStyle(fontSize: 25),
                                ),
                                subtitle: Text(
                                  "Gh₵${products[index].price}",
                                  style: const TextStyle(fontSize: 22),
                                ),
                                trailing: const IconTheme(
                                  data: IconThemeData(
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  child: StarDisplay(value: 3),
                                ),
                                onTap: () {
                                  _valueSetter(products[index]);
                                },
                              ),
                              SizedBox(
                                width: 170,
                                height: 45,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: Text(
                                      buttonName,
                                      style: const TextStyle(fontSize: 20),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
      itemCount: products.length + 1,
      shrinkWrap: true,
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
    );
  }
}
