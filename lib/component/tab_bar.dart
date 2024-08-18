

import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class Tab_Bar extends StatelessWidget {
  final TabController tabController;
  const Tab_Bar({super.key, required this.tabController});
List<Tab> _buildtab(){
  return foodcategory.values.map((category){
    return  Tab(
      text: category.toString().split('.').last,
    );
  }).toList();
}
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildtab()
    );
  }
}
