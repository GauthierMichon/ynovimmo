import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/home/components/add_filters.dart';
import 'package:ynov_immo/pages/home/components/annonce.dart';
import 'package:ynov_immo/pages/home/components/carousel.dart';
import 'package:ynov_immo/pages/home/components/filters.dart';
import 'package:ynov_immo/pages/home/components/intro.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Annonce> aptList = [];

  Future<void> getAptTest() async {
    // Simulation call api
    var body = [
      {
        "total": 6,
        "code": 0,
        "offset": 1,
        "limit": 5,
        "data": [
          {
            "ges_class": "ges_class",
            "address": "address",
            "city": "city",
            "accroche": "accroche",
            "latitude": "latitude",
            "description": "description",
            "id_user": 2,
            "type": "type",
            "zip_code": "zip_code",
            "has_exposed_stone": 7,
            "has_garden": 4,
            "nb_bedroom": 9,
            "size": 3,
            "price": 2,
            "nb_rooms": 7,
            "energy_class": "energy_class",
            "id": 5,
            "has_parquet_floor": 1,
            "longitude": "longitude",
            "has_ciment_tiles": 1
          },
          {
            "ges_class": "ges_class",
            "address": "address",
            "city": "city",
            "accroche": "accroche",
            "latitude": "latitude",
            "description": "description",
            "id_user": 2,
            "type": "type",
            "zip_code": "zip_code",
            "has_exposed_stone": 7,
            "has_garden": 4,
            "nb_bedroom": 9,
            "size": 3,
            "price": 2,
            "nb_rooms": 7,
            "energy_class": "energy_class",
            "id": 6,
            "has_parquet_floor": 1,
            "longitude": "longitude",
            "has_ciment_tiles": 1
          }
        ]
      }
    ];
    var pagination = RealEstatePagination.listFromJson(body);

    setState(() {
      aptList = pagination[0]
          .list
          .map((realEstate) => Annonce(estate: realEstate))
          .toList();
    });
  }

  //avec l'api
  Future<void> getApt() async {
    var apiInstance = RealEstateApi();
    try {
      var result = await apiInstance.realEstateGet(limit: 2);

      setState(() {
        aptList = result[0]
            .list
            .map((realEstate) => Annonce(estate: realEstate))
            .toList();
      });
    } catch (e) {
      print(
          "Probleme vers l'API débrouille toi ( Faudrais peut être fournir de la donnée pour ce genre d'exercice chacal ! )");
    }
  }

  // de la fausse données vers l'api chager getApt en getAptTest
  @override
  Widget build(BuildContext context) {
    getApt();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Intro(),
        AddFilters(),
        Filters(),
        SizedBox(height: 8),
        Expanded(
          child: RefreshIndicator(
            onRefresh: getApt,
            child: aptList.length != 0
                ? ListView.separated(
                    itemCount: aptList.length,
                    itemBuilder: (context, index) {
                      return aptList[index];
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 4);
                    },
                  )
                : Center(
                    child: Text(
                      "Aucun appartement!",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
