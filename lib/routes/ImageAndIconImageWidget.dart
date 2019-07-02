import 'package:flutter/material.dart';


class ImageAndIconImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text("Image and Icon", textAlign: TextAlign.left,),
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("assets/images/ucenter_image_six.jpg"),
              width: double.maxFinite,
              height: 200,),
            Image.asset(
              "assets/images/ic_launcher.png", width: 60, height: 60,),
            Image(image: NetworkImage(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562051068150&di=794b366a55c5b37cf75df91742f8ed98&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201611%2F30%2F20161130003308_TF8sh.thumb.700_0.jpeg"),
              width: 100,
              height: 100,
              fit: BoxFit.fill,
              alignment: Alignment.centerLeft,),
            Image(image: AssetImage("assets/images/ic_launcher.png"),
              width: 40,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.accessible, color: Colors.green,),
              Icon(Icons.error, color: Colors.green,),
              Icon(Icons.fingerprint, color: Colors.green,),
              ],),


          ],
        ),
      ),
    );
  }

}

