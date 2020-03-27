import 'package:flutter/material.dart';
import '../config/index.dart';

class CategoryPage extends StatefulWidget {
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(KString.categoryTitle),);
  }
}
