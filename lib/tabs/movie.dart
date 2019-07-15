import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  MoviePage({Key key}) : super(key: key);

  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[],
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.recent_actors,
            color: Colors.grey,
            size: 34,
          ),
          actions: <Widget>[
            Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.gamepad,
              color: Colors.grey,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: ListView(
          shrinkWrap: true, // 使得listView高度自适应
          // physics: NeverScrollableScrollPhysics(), // 嵌套滑动组件没有办法跟随页面滚动
          children: <Widget>[
            Container(
              height: 180,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562259916233&di=130a9c1698f8ab1800b6c5b6fbfb66c6&imgtype=0&src=http%3A%2F%2Fpic33.nipic.com%2F20130924%2F9822353_015119969000_2.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                color: Colors.red,
                child: GridView.count(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[Icon(Icons.games), Text('我是测试')],
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                height: 60,
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('left part'),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text('right part'),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Text('${index}');
              },
              itemCount: 100,
            ),
          ],
        ));
  }
}
