import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextAndButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text and Button Page", textAlign: TextAlign.center,),
      ),
      body: new Container(
        decoration: new BoxDecoration(image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: new AssetImage("assets/images/ucenter_image_six.jpg"),
            fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("normal", textAlign: TextAlign.left,),
            Text("normal text for lines" * 4, maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,),
            Text("normal text for big ", textScaleFactor: 1.5,
              textAlign: TextAlign.left,),
            Text("text for style",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18.0,
                height: 1.4,
                fontFamily: "Courier",
                background: new Paint()
                  ..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
            Text.rich(TextSpan(
                children: [TextSpan(text: "Home:"),
                TextSpan(text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue),),
                ]

            )),
            RaisedButton(child: Text("raised Button"), onPressed: () => {},),
            FlatButton(child: Text("Flat Button"), onPressed: () => {},),
            OutlineButton(child: Text("Outline Button"), onPressed: () => {},),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: () => {},),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},),

          ],
        ),
        width: double.infinity,
        height: double.infinity,
      ),

    );
  }

}
