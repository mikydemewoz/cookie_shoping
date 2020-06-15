import 'package:cookie_store/cookie_detail.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 80,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                    false, false, context),
                _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                    true, false, context),
                _buildCard('Cookie classic', '\$1.99',
                    'assets/cookieclassic.jpg', false, true, context),
                _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                    false, false, context),
              ],
            ),
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookiePrice:price,
                    cookieName: name
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5)
              ],
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavorite
                        ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                        : Icon(Icons.favorite_border, color: Color(0xFFEF7532))
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            imgPath,
                          ),
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(height: 7),
              Text(
                price,
                style: TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      if (!added) ...[
                        Icon(
                          Icons.shopping_basket,
                          color: Color(0xFFD17E50),
                          size: 12,
                        ),
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xFFD17E50),
                              fontSize: 12),
                        )
                      ],
                      if (added) ...[
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xFFD17E50),
                          size: 12,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xFFD17E50),
                              fontSize: 12),
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: Color(0xFFD17E50),
                          size: 12,
                        ),
                      ]
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
