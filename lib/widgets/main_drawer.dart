import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String txt, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        txt,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoCondensed',
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(20),
          ),
          SizedBox(
            height: 6,
          ),
          buildListTitle(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          SizedBox(
            height: 6,
          ),
          buildListTitle('Filters', Icons.settings, (){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          },),
        ],
      ),
    );
  }
}
