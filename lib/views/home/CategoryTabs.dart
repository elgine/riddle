import 'package:flutter/material.dart';

class Category {
  String label;
  String src;
  Category(this.src, this.label);
}

class _CategoryTabsState extends State<CategoryTabs> {
  List<Category> _categories;

  _CategoryTabsState([List<Category> cates]) {
    this._categories = cates != null ? cates : [];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _categories.length,
      child:
          TabBar(tabs: List.from(_categories.map((c) => Tab(text: c.label)))),
    );
  }
}

class CategoryTabs extends StatefulWidget {
  @override
  _CategoryTabsState createState() {
    return _CategoryTabsState();
  }
}
