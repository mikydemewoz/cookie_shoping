import 'package:flutter/material.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookiePrice, cookieName;

  const CookieDetail(
      {Key key, this.assetPath, this.cookiePrice, this.cookieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
              onPressed: () {}),
          title: Text(
            'Pickup',
            style: TextStyle(
                fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF545D68)),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
                onPressed: () {}),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Cookie',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Hero(
              tag: assetPath,
              child: Image.asset(
                assetPath,
                height: 150,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                cookiePrice,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532)),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                cookieName,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                child: Text(
                  'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16,
                      color: Color(0xFFB4B8B9)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFFF17532),
                ),
                child: Center(
                    child: Text('Add to cart',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Varela',
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
            )
          ],
        ));
  }
}
