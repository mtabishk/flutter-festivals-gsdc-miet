import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_shopping_app/ui/constants.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.assetPath,
    required this.tag,
    required this.price,
  }) : super(key: key);
  final String assetPath;
  final String tag;
  final String price;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _quantity = 0;
  bool _isFavorite = false;

  Future<void> _getShoesDatabaseDetails() async {
    final _refrence =
        await FirebaseFirestore.instance.collection('shoes').get();
    _refrence.docs.forEach((element) {
      print(element.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.tag,
                child: Container(
                  width: size.width,
                  height: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(widget.assetPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.search,
                      size: 28.0,
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.shopping_cart,
                      size: 28.0,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 28.0,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Positioned(
                bottom: 32,
                left: 32,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$" + widget.price,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(dummyText),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.remove,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {
                        if (_quantity > 0) {
                          _quantity--;
                        }
                      });
                    },
                  ),
                  Text(
                    _quantity.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  size: 28,
                  color: _isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: ElevatedButton(
                // onPressed: _getShoesDatabaseDetails,
                onPressed: (() {}),
                child: Text("BUY NOW"),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
