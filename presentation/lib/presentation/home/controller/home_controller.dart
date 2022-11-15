import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:test_2/presentation/home/models/response.dart' as model;
import 'package:test_2/presentation/home/models/user.dart';

import 'article_item.dart';

class HomeController extends GetxController {
  Rxn<User> user = Rxn();
  RxList<ArticleItem> articlesItems = RxList();

  void readJsonFile() async {
    String jsonString = await rootBundle.loadString('resources/files/asset.json');
    Map<String, dynamic> map = jsonDecode(jsonString);
    model.Response response = model.Response.fromJson(map);

    user.value = response.user;

    //Varianta cu iterare si adaugare
    /*   for (var element in response.articles) {
      articlesItems.add(ArticleItem(
        title: element.title,
        iconUrl: element.imageCover,
      ));
    }*/

    //Varianta cu map
    articlesItems.value = response.articles
        .map((e) => ArticleItem(
              title: e.title,
              iconUrl: e.imageCover,
            ))
        .toList();
  }
}
