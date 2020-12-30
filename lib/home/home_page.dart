import 'package:app/uploaddoc/listoffiles.dart';
import 'package:app/uploaddoc/uploaddoc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<String> items = ["File1", "File2"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[UploadDoc(items), ListOfFiles(items)],
          ),
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  elevation: 2,
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                  // centerTitle: true,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Manage List'),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Home'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                text: 'Add Item',
              ),
              Tab(
                text: 'List',
              ),
            ]),
          ),
        ));
  }
}
