import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomAppbarExample extends StatelessWidget {
  const BottomAppbarExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bottom appbar demo'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              showModalBottomSheet<Null>(
                context: context,
                builder: (BuildContext context) => _getDemoDrawer(),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //Fluttertoast.showToast(msg: 'This is a dummy search action.');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              //Fluttertoast.showToast(msg: 'This is a dummy menu action.');
            },
          ),
        ],
      ))
      ),
    );
  }

  Widget _getDemoDrawer() {
    return Drawer(
      child: Column(
        children: const <Widget>[
          const ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
          ),
          const ListTile(
            leading: const Icon(Icons.threed_rotation),
            title: const Text('3D'),
          ),
        ],
      ),
    );
  }
}