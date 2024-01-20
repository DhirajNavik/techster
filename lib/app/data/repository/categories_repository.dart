import 'dart:convert';

import 'package:techster_apps/app/data/values/urls.dart';
import 'package:techster_apps/base/base_repository.dart';

class CategoriesRepository extends BaseRepository {
  Future getResponseData() async {
    final response = await controller.get(path: URLs.category);
    return jsonDecode(response);
  }

  Future getCategoryByID({required String index}) async {
    final response =
        await controller.get(path: "${URLs.festDetails}?category_id=$index");
    return jsonDecode(response);
  }
}
