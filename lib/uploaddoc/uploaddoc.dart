import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';

class UploadDoc extends StatefulWidget {
  final List<String> items;

  UploadDoc(this.items);
  @override
  _UploadDocState createState() => _UploadDocState();
}

class _UploadDocState extends State<UploadDoc> {
  bool _loadingPath = false;
  List<PlatformFile> _paths;
  void _openFileExplorer() async {
    setState(() => _loadingPath = true);
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      ))
          ?.files;
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (ex) {
      print(ex);
    }
    if (!mounted) return;
    setState(() {
      _loadingPath = false;
      String _fileName =
          _paths != null ? _paths.map((e) => e.name).toString() : '...';
      widget.items.add(_fileName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: () => _openFileExplorer(),
          child: Text("Open file picker"),
        ),
      ),
    );
  }
}
