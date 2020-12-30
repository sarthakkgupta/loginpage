import 'package:flutter/material.dart';

class ListOfFiles extends StatefulWidget {
  final List<String> items;

  ListOfFiles(this.items);

  @override
  _ListOfFilesState createState() => _ListOfFilesState();
}

class _ListOfFilesState extends State<ListOfFiles> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${widget.items[index]}'),
        );
      },
    );
  }
}
