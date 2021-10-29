import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/add_filters.dart';
import 'package:ynov_immo/pages/home/components/annonce.dart';
import 'package:ynov_immo/pages/home/components/carousel.dart';
import 'package:ynov_immo/pages/home/components/filters.dart';
import 'package:ynov_immo/pages/home/components/intro.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Intro(),
          AddFilters(),
          Filters(),
          Annonce()
        ],
      ),
    );
  }
}
