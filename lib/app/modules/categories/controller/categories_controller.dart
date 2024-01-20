import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/model/response/FestCategoryResponse.dart';
import 'package:techster_apps/app/data/model/response/FestivalDetailsResponse.dart';
import 'package:techster_apps/app/data/repository/categories_repository.dart';
import 'package:techster_apps/base/base_controller.dart';
import 'package:techster_apps/utils/loading/loadings_utils.dart';

class CategoriesController extends BaseController<CategoriesRepository> {
  RxList<FestCategoryResponse> festivalNamesLists = RxList();
  RxList<FestivalDetailsResponse> festivDayDetails = RxList();
  RxString placeholderString = "".obs;

  @override
  void onInit() {
    super.onInit();
    get();
  }

  Future<void> get() async {
    placeholderString.value==""?
    LoadingUtils.hideLoader():
    LoadingUtils.showLoader();
    try {
      final response = await repository.getResponseData();

      if (response != "") {
        for (var i in response["records"]) {
          festivalNamesLists.add(FestCategoryResponse.fromJson(i));
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      LoadingUtils.hideLoader();
    }
  }

  Future<void> getFestDetails(String index) async {
    LoadingUtils.showLoader();
    try {
      final response = await repository.getCategoryByID(index: index);

      if (response != "") {
        festivDayDetails.clear();
        for (var i in response["records"]["2021"]) {
          festivDayDetails.add(FestivalDetailsResponse.fromJson(i));
        }
        for (var i in response["records"]["2022"]) {
          festivDayDetails.add(FestivalDetailsResponse.fromJson(i));
        }
        for (var i in response["records"]["2023"]) {
          festivDayDetails.add(FestivalDetailsResponse.fromJson(i));
        }
        for (var i in response["records"]["2024"]) {
          festivDayDetails.add(FestivalDetailsResponse.fromJson(i));
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      LoadingUtils.hideLoader();
    }
  }
}
