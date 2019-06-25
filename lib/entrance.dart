import 'package:flutter/material.dart';
import 'package:joy_play_app/tabs/home.dart';
import 'package:joy_play_app/tabs/message.dart';
import 'package:joy_play_app/tabs/movie.dart';
import 'package:joy_play_app/tabs/profile.dart';


class Entrance extends StatefulWidget {
  Entrance({Key key}) : super(key: key);

  _EntranceState createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {

  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    MoviePage(),
    MessagePage(),
    ProfilePage()
  ];

  List _pageTitle = [
    '首页',
    '分类',
    '购物车',
    '我的'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('${this._pageTitle[this._currentIndex]}'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 30,
        backgroundColor:Colors.white,
        fixedColor: Colors.blueAccent,
        type:BottomNavigationBarType.fixed , // 配置底部tab按钮可以大于三个
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            title: Text('分类')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('我的')
          ),
        ],
      ),
      body:this._pageList[this._currentIndex],
    );
  }
}