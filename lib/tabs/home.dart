import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


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

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 180,
       color: Colors.lightBlue,
       child: Swiper(
         itemBuilder:(BuildContext context,int index){
           return Image.network("${this._imgList[index]}",fit:BoxFit.cover);
         },
         itemCount: this._imgList.length,
         pagination: new SwiperPagination(
           builder: DotSwiperPaginationBuilder(
            color: Colors.black54,
            activeColor: Colors.white,
           ),
         ),
         control: new SwiperControl(
          //  iconPrevious: null,
          //  iconNext: null
         ),
         scrollDirection: Axis.horizontal,
         autoplay: true,
         autoplayDelay: 3000,
         autoplayDisableOnInteraction:true,
         onTap: (index) => print('点击了第$index个'),
       ),
    );
  }

}