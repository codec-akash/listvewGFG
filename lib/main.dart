import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView - tut',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nameList = [];

  @override
  void initState() {
    // TODO: implement initState
    for (var i = 0; i < 50; i++) {
      nameList.add("Name of someone");
    }
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle font = TextStyle(
      fontSize: 20.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView-tut"),
      ),
      body: nameList.isNotEmpty
          ? Column(
              children: [
                Center(
                  child: Container(
                    height: 250,
                    child: ListView(
                      children: [
                        RaisedButton(onPressed: null),
                        FlatButton(onPressed: null, child: Text("HEllo")),
                        Icon(Icons.add),
                        Column(
                          children: [
                            RaisedButton(onPressed: null),
                          ],
                        ),
                        RaisedButton(onPressed: null),
                        FlatButton(onPressed: null, child: Text("HEllo")),
                        Icon(Icons.add),
                        Column(
                          children: [
                            RaisedButton(onPressed: null),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 250,
                  child: ListView.builder(
                      itemCount: nameList.length,
                      itemBuilder: (context, index) {
                        print("Print");
                        return Text(
                          nameList[index],
                          style: font,
                        );
                      }),
                )
              ],
            )
          : Center(
              child: Text(
                "List is Empty",
                style: font,
              ),
            ),
    );
  }
}
