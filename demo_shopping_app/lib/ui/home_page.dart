import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_shopping_app/ui/constants.dart';
import 'package:demo_shopping_app/ui/details_page.dart';
import 'package:demo_shopping_app/ui/empty_content.dart';
import 'package:demo_shopping_app/ui/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["Nike", "Adidas", "Puma", "Vans", "Reebok"];
  int _selectedIndex = 0;
  int itemsLength = 8;

  Future<void> _addShoesDatabaseDetails() async {
    // add nike shoes data
    for (var product in nikeProducts) {
      final String id = DateTime.now().toIso8601String();
      final _reference = FirebaseFirestore.instance.doc('shoes/$id');
      await _reference.set(product.toMap());
    }
    // add adidas shoes data
    for (var product in adidasProducts) {
      final String id = DateTime.now().toIso8601String();
      final _reference = FirebaseFirestore.instance.doc('shoes/$id');
      await _reference.set(product.toMap());
    }
    // add puma shoes data
    for (var product in pumaProducts) {
      final String id = DateTime.now().toIso8601String();
      final _reference = FirebaseFirestore.instance.doc('shoes/$id');
      await _reference.set(product.toMap());
    }
    // add vans shoes data
    for (var product in vansProducts) {
      final String id = DateTime.now().toIso8601String();
      final _reference = FirebaseFirestore.instance.doc('shoes/$id');
      await _reference.set(product.toMap());
    }
    // add reebok shoes data
    for (var product in reebokProducts) {
      final String id = DateTime.now().toIso8601String();
      final _reference = FirebaseFirestore.instance.doc('shoes/$id');
      await _reference.set(product.toMap());
    }
  }

  List<Product> _nikeProducts = [];
  List<Product> _adidasProducts = [];
  List<Product> _pumaProducts = [];
  List<Product> _vansProducts = [];
  List<Product> _reebokProducts = [];

  @override
  void initState() {
    super.initState();
    // this._addShoesDatabaseDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "KICKS STORE",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black87,
            size: 28.0,
          ),
          SizedBox(width: 16.0),
          Icon(
            Icons.shopping_cart,
            color: Colors.black87,
            size: 28.0,
          ),
          SizedBox(width: 8.0),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('shoes').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return EmptyContent(
                title: 'Something went wrong',
                message: 'Please try again later',
              );
            }
            if (snapshot.hasData) {
              if (snapshot.connectionState == ConnectionState.done ||
                  snapshot.connectionState == ConnectionState.active) {
                final documents = snapshot.data?.docs;
                if (documents != null) {
                  for (var d in documents) {
                    if (d['brand'] == 'nike') {
                      _nikeProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand'],
                      ));
                    } else if (d['brand'] == 'adidas') {
                      _adidasProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand'],
                      ));
                    } else if (d['brand'] == 'puma') {
                      _pumaProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand'],
                      ));
                    } else if (d['brand'] == 'vans') {
                      _vansProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand'],
                      ));
                    } else {
                      _reebokProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand'],
                      ));
                    }
                  }
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) => buildCategory(index),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPaddin),
                        child: GridView.builder(
                            itemCount: 8,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: kDefaultPaddin,
                              crossAxisSpacing: kDefaultPaddin,
                              childAspectRatio: 0.75,
                            ),
                            itemBuilder: (context, index) {
                              final String currBrand =
                                  categories[_selectedIndex].toLowerCase();

                              List<Product> _currentProducts = _nikeProducts;
                              if (currBrand == 'nike') {
                                _currentProducts = _nikeProducts;
                              } else if (currBrand == 'adidas') {
                                _currentProducts = _adidasProducts;
                              } else if (currBrand == 'puma') {
                                _currentProducts = _pumaProducts;
                              } else if (currBrand == 'vans') {
                                _currentProducts = _vansProducts;
                              } else if (currBrand == 'reebok') {
                                _currentProducts = _reebokProducts;
                              }

                              final tag = snapshot.data?.docs[index].id;

                              return itemCard(
                                tag: tag.toString(),
                                price: _currentProducts[index].price,
                                assetPath: _currentProducts[index].imageUrl,
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                        assetPath:
                                            _currentProducts[index].imageUrl,
                                        tag: tag.toString(),
                                        price: _currentProducts[index].price,
                                      ),
                                    )),
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                );
              }
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  Widget itemCard(
      {Function()? onPressed,
      required String assetPath,
      required String tag,
      required String price}) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: tag,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "\$" + price,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: _selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 45,
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
