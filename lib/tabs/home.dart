import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:joy_play_app/common/app_colors.dart';
import 'package:joy_play_app/common/list_data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imgList = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561465519560&di=35496b31d1f7a9ec92941bfc6fb42761&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Ff00204e4eea23d34e8e413290e5e799b68318395194f6-lRnmz8_fw658',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561465519559&di=48d9995e7582e9d523b25c6d3a44f68b&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201412%2F27%2F20141227174553_auCHe.jpeg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561465519559&di=9897e55cd3eddfddcf2b00b0362e3c0d&imgtype=0&src=http%3A%2F%2Fpic16.nipic.com%2F20110817%2F2839526_152333630088_2.jpg'
  ];

  /**
   * 
   */

  List<Widget> _getNav() {
    List<Widget> list = new List();
    for (var i = 0; i < data.length; i++) {
      list.add(Tab(
        text: '${data[i]}',
      ));
    }
    return list;
  }

  Widget _getRecommend(context, index) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: InkWell(
          onTap: () {
            print('事件监听');
            // TODO
            // 下载一个可以使用toast的库
            // showDialog<Null>(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return new SimpleDialog(
            //       title: new Text('选择'),
            //       children: <Widget>[
            //         new SimpleDialogOption(
            //           child: new Text('选项 1'),
            //           onPressed: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         new SimpleDialogOption(
            //           child: new Text('选项 2'),
            //           onPressed: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //       ],
            //     );
            //   },
            // ).then((val) {
            //   print(val);
            // });
          },
          child: Column(
            children: <Widget>[
              Image.network(
                '${reCommendList[index]['imgUrl']}',
                width: 42,
                height: 42,
              ),
              SizedBox(
                height: 5,
              ),
              Text('${reCommendList[index]['title']}'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: data.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.base_201B3B,
          title: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: this._getNav()),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  height: 180,
                  color: Colors.lightBlue,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network("${this._imgList[index]}",
                          fit: BoxFit.cover);
                    },
                    itemCount: this._imgList.length,
                    pagination: new SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.black54,
                        activeColor: Colors.white,
                      ),
                    ),
                    control:
                        new SwiperControl(iconPrevious: null, iconNext: null),
                    scrollDirection: Axis.horizontal,
                    autoplay: true,
                    autoplayDelay: 3000,
                    autoplayDisableOnInteraction: true,
                    onTap: (index) => print('点击了第$index个'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: new NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      // mainAxisSpacing: 5,
                      // crossAxisSpacing: 5,
                    ),
                    // scrollDirection:Axis.horizontal,  //滚动方向
                    itemCount: reCommendList.length,
                    itemBuilder: this._getRecommend,
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 60,
                              child: Image.network(
                                'https://s1.xmcdn.com/lib/xmweb/images/logo_fc1bef3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 290,
                              child: Text(
                                '天美服务受到质疑缩放无论如何都不太一样啊是发的说法是救死扶伤看就',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              color: Colors.grey,
                              width: 2,
                              height: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('更多')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                
              ],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
            ListView(
              children: <Widget>[Text('456')],
            ),
          ],
        ),
      ),
    );
  }
}
