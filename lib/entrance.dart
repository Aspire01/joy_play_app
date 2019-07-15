import 'package:flutter/material.dart';
import 'package:joy_play_app/tabs/home.dart';
import 'package:joy_play_app/tabs/message.dart';
import 'package:joy_play_app/tabs/movie.dart';
import 'package:joy_play_app/tabs/profile.dart';
import 'common/app_colors.dart';


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
        centerTitle: true,
        title:Text('${this._pageTitle[this._currentIndex]}'),
        backgroundColor: AppColors.base_201B3B,
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
        fixedColor: AppColors.tabbar_FE5E43,
        type:BottomNavigationBarType.fixed , // 配置底部tab按钮可以大于三个
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('我听')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('发现')
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('帐号')
          ),
        ],
      ),
      body:this._pageList[this._currentIndex],
    );
  }
}