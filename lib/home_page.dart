import 'package:cookie_store/bottom_bar.dart';
import 'package:cookie_store/cookie_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15),
          Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Cookies',
                  style: TextStyle(fontFamily: 'Varela', fontSize: 21),
                ),
              ),
              Tab(
                child: Text(
                  'Cookie Cake',
                  style: TextStyle(fontFamily: 'Varela', fontSize: 21),
                ),
              ),
              Tab(
                child: Text(
                  'Ice Cream',
                  style: TextStyle(fontFamily: 'Varela', fontSize: 21),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                CookiePage(),
                CookiePage(),
                CookiePage()
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
