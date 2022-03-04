import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String picture = "https://upload.wikimedia.org/wikipedia/commons/9/9a/Bundesarchiv_Bild_183-S33882%2C_Adolf_Hitler_%28cropped2%29.jpg";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           // CachedNetworkImage(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/c/c0/Adolf-hitler.jpg"),


             // Image.network("https://upload.wikimedia.org/wikipedia/commons/c/c0/Adolf-hitler.jpg"),
           // Image.network("https://upload.wikimedia.org/wikipedia/commons/9/9a/Bundesarchiv_Bild_183-S33882%2C_Adolf_Hitler_%28cropped2%29.jpg"),
            Image.network(picture),

            ElevatedButton(onPressed: ()
                {
                  setState(() {
                    picture = "https://upload.wikimedia.org/wikipedia/commons/9/9a/Bundesarchiv_Bild_183-S33882%2C_Adolf_Hitler_%28cropped2%29.jpg";
                  });
                }
                , child: Text("Hitler1")),

            ElevatedButton(onPressed: ()
            {
              setState(() {
                picture = "https://upload.wikimedia.org/wikipedia/commons/c/c0/Adolf-hitler.jpg";
              });
            }
                , child: Text("Hitler2")),

          ],
        ),
      ),

    );
  }
}
