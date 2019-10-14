import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        //drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Adjust your meal selection',
                  style: Theme.of(context).textTheme.title),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                      'Gluten-Free',
                      'Only include gluten-free meals.',
                      _glutenFree,
                      (newValue) {
                        setState(() {
                          _glutenFree = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      'Lactose-Free',
                      'Only include lactose-free meals.',
                      _lactoseFree,
                          (newValue) {
                        setState(() {
                          _lactoseFree = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      'Vegetarian Food',
                      'Only include vegetarian meals.',
                      _vegetarian,
                          (newValue) {
                        setState(() {
                          _vegetarian = newValue;
                        });
                      }),
                  _buildSwitchListTile(
                      'Vegan Food',
                      'Only include vegan meals.',
                      _vegan,
                          (newValue) {
                        setState(() {
                          _vegan = newValue;
                        });
                      }),

                ],
              ),
            )
          ],
        ));
  }

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        value: currentValue,
        subtitle: Text(subtitle),
        onChanged: updateValue);
  }
}
