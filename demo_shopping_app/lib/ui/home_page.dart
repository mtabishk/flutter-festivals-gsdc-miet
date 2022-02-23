import 'package:demo_shopping_app/ui/constants.dart';
import 'package:demo_shopping_app/ui/details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["Nike", "Adidas", "Puma", "Vans", "Reebok"];
  int _selectedIndex = 0;
  int itemsLength = 8;

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
      body: Column(
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
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: itemsLength,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => itemCard(
                        assetPath:
                            "assets/images/${categories[_selectedIndex].toLowerCase()}/${categories[_selectedIndex].toLowerCase()}_" +
                                (index + 1).toString() +
                                ".jpg",
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                assetPath:
                                    "assets/images/${categories[_selectedIndex].toLowerCase()}/${categories[_selectedIndex].toLowerCase()}_" +
                                        (index + 1).toString() +
                                        ".jpg",
                              ),
                            )),
                      )),
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget itemCard({Function()? onPressed, required String assetPath}) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: "$assetPath",
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "\$100.00",
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
