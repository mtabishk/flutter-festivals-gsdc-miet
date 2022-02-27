import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kicks_store/constants.dart';
import 'package:kicks_store/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["Nike", "Adidas", "Vans", "Puma", "Reebok"];
  int _selectedIndex = 0;

  Future<void> _addShoesDatabaseDetails() async {
    // add nike shoes data
    for (var product in nikeProducts) {
      final String id = DateTime.now().toIso8601String();
      final _refrence = FirebaseFirestore.instance.doc('shoes/$id');
      await _refrence.set(product.toMap());
    }
    // add puma shoes data
    for (var product in pumaProducts) {
      final String id = DateTime.now().toIso8601String();
      final _refrence = FirebaseFirestore.instance.doc('shoes/$id');
      await _refrence.set(product.toMap());
    }
    // add reebok shoes data
    for (var product in reebokProducts) {
      final String id = DateTime.now().toIso8601String();
      final _refrence = FirebaseFirestore.instance.doc('shoes/$id');
      await _refrence.set(product.toMap());
    }
    // add vans shoes data
    for (var product in vansProducts) {
      final String id = DateTime.now().toIso8601String();
      final _refrence = FirebaseFirestore.instance.doc('shoes/$id');
      await _refrence.set(product.toMap());
    }
    // add adidas shoes data
    for (var product in adidasProducts) {
      final String id = DateTime.now().toIso8601String();
      final _refrence = FirebaseFirestore.instance.doc('shoes/$id');
      await _refrence.set(product.toMap());
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
    //_addShoesDatabaseDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KICKS STORE",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 34.0,
          ),
          SizedBox(width: 8.0),
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 34.0,
          ),
          SizedBox(width: 16.0),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("shoes").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final documents = snapshot.data?.docs;
              if (documents != null) {
                for (var d in documents) {
                  if (d['brand'] == 'nike') {
                    _nikeProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand']));
                  } else if (d['brand'] == 'adidas') {
                    _adidasProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand']));
                  } else if (d['brand'] == 'puma') {
                    _pumaProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand']));
                  } else if (d['brand'] == 'vans') {
                    _vansProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand']));
                  } else {
                    _adidasProducts.add(Product(
                        imageUrl: d['imageUrl'],
                        price: d['price'],
                        brand: d['brand']));
                  }
                }
              }

              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32.0,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return buildCategory(index);
                          }),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: kDefaultPaddin,
                              crossAxisSpacing: kDefaultPaddin,
                              childAspectRatio: 0.75,
                            ),
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              final String currBrand =
                                  categories[_selectedIndex].toLowerCase();

                              List<Product> _currentProducts = _nikeProducts;

                              if (currBrand == 'nike') {
                                _currentProducts = _nikeProducts;
                              } else if (currBrand == 'adidas') {
                                _currentProducts = _adidasProducts;
                              } else if (currBrand == 'vans') {
                                _currentProducts = _vansProducts;
                              } else if (currBrand == 'puma') {
                                _currentProducts = _pumaProducts;
                              } else {
                                _currentProducts = _reebokProducts;
                              }
                              return itemCard(
                                  price: _currentProducts[index].price,
                                  imageUrl: _currentProducts[index].imageUrl);
                            }),
                      ),
                    ),
                  ]);
            }
            return Center(child: CircularProgressIndicator());
          }),
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
        padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: _selectedIndex == index ? kTextColor : kTextLightColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPaddin / 4),
            height: 2.0,
            width: 48,
            color: _selectedIndex == index ? kTextColor : kTextLightColor,
          )
        ]),
      ),
    );
  }

  Widget itemCard({
    required String price,
    required String imageUrl,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: 180,
            width: 180,
            child: Image.network(imageUrl),
          ),
        ),
        SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "\$ " + price,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
