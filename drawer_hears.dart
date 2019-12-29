import 'package:flutter/material.dart';

class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Drawer example'),
        ),
        body: Center(
          child: Text('Swip or click upper-left icon to see drawer.'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              drawerHeader,
              ListTile(
                title: Text('To page 1'),
                onTap: () => Navigator.of(context).push(_NewPage(1)),
              ),
              ListTile(
                title: Text('To page 2'),
                onTap: () => Navigator.of(context).push(_NewPage(2)),
              ),
              ListTile(
                title: Text('other drawer item'),
                onTap: () {},
              ),
            ],
          ),
        )
        );
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  final int _id;
  _NewPage(this._id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $_id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $_id'),
            ),
          );
        });
}
