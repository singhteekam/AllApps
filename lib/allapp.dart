import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> appTitle = [
  'Portfolio',
  'Web Portfolio',
  'Age Calculator' , 
  'Shabdkosh',
  'Translator',
  'Flutter Speech to Text'
  ];

List<String> view = [
  'https://singhteekam.github.io/Portfolio/#/',
  'https://singhteekam.github.io/MyPortfolio/#/',
  'https://singhteekam.github.io/AgeCalculator/#/',
  'https://singhteekam.github.io/Shabdkosh/',
  'https://singhteekam.github.io/Translator/',
  'https://singhteekam.github.io/Flutter-Speech-Recognition'
];
List<String> code = [
  
  'https://github.com/singhteekam/Portfolio',
  'https://github.com/singhteekam/MyPortfolio',
  'https://github.com/singhteekam/AgeCalculator',
  'https://github.com/singhteekam/Shabdkosh',
  'https://github.com/singhteekam/Translator',
  'https://singhteekam.github.io/Flutter-Speech-Recognition'
];

class AllApp extends StatefulWidget {
  @override
  _AllAppState createState() => _AllAppState();
}

class _AllAppState extends State<AllApp> {
  _viewapp(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _viewcode(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Apps"),
          centerTitle: true,
          ),
        backgroundColor: Colors.lightBlue[100],
        body: ListView.builder(
            itemCount: appTitle.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color:Colors.teal[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width * 98,
                    child: Column(
                      children: <Widget>[
                        Text(
                          appTitle[index],
                          textScaleFactor: 2,style: TextStyle(fontWeight:FontWeight.bold,fontStyle:FontStyle.italic),
                        ),
                        ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              FlatButton(
                                child: Text('View'),
                                color: Colors.blue,
                                onPressed: () => _viewapp(view[index]),
                              ),
                              FlatButton(
                                child: Text('Code'),
                                color: Colors.blue,
                                onPressed:()=> _viewcode(code[index]),
                              ),
                            ])
                      ],
                    )),
              );
            }));
  }
}
