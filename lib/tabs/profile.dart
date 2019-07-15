import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('123'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              print('search sth');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              print('add to cart');
            },
          ),
        ],
      ),
      // 自定义抽屉
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ashel'),
              accountEmail: Text('18253137881@163.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),

            // body
            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.account_balance,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.category,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
            ),

            Divider(height: 1,),
            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print('every item');
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
