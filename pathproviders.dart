import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ForMakeANote extends StatefulWidget {
  final Storage storage;
  ForMakeANote({Key key, @required this.storage}) : super(key: key);

  @override
  _ForMakeANoteState createState() => _ForMakeANoteState();
}

class _ForMakeANoteState extends State<ForMakeANote> {
  TextEditingController controller = TextEditingController();
  String state;
  Future<Directory> _appDocDir;

  @override
  void initState() {
    super.initState();
    widget.storage.readData().then((String value) {
      setState(() {
        state = value;
      });
    });
  }

  Future<File> writeData() async{
    setState(() {
     state = controller.text;
     controller.text = ''; 
    });
    return widget.storage.writeData(state);
  }

  void getAppDirectory(){
    setState((){
      _appDocDir = getApplicationDocumentsDirectory();
    });
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('${state ?? "File is empty"}'),
          TextField(
            controller: controller,
          ),
          RaisedButton(
            onPressed: writeData,
            child: Text('write to file'),
          ),
          RaisedButton(
            onPressed: getAppDirectory,
            child: Text('Get DIR path'),
          ),
          FutureBuilder<Directory>(
            future: _appDocDir,
            builder: (BuildContext context,AsyncSnapshot<Directory> snap){
              Text text = Text('');
              if(snap.connectionState == ConnectionState.done){
                if(snap.hasError){
                  text = Text('Error:${snap.error}');
                }else if(snap.hasData){
                  text = Text('Path:${snap.data.path}');
                }else{
                  text = Text('invailable');
                }
              }
              return Container(
                child:text,
              );
            },
          )
        ],
      ),
    );
  }
}

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/db.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();
      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}
