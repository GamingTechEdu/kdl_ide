import 'package:flutter/material.dart';
import 'package:coocree_select_simuc/package.dart';

final List<Widget> menuWidgets = [
  const SimucIncludeDrawer(),
  const SimucFixDrawer(),
];

class User{
  final String id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});
}