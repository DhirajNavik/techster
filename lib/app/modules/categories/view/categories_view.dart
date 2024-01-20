
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techster_apps/app/data/values/dimens.dart';
import 'package:techster_apps/app/data/values/urls.dart';
import 'package:techster_apps/app/modules/categories/controller/categories_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:techster_apps/app/modules/categories/widgets/category_appbar.dart';
import 'package:techster_apps/app/themes/app_colors.dart';
import 'package:techster_apps/app/themes/app_styles.dart';
import 'package:techster_apps/widgets/drawer.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppbar(),
      drawer: HeaderDrawer(),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimens.paddingX3,),
            Expanded(
              flex: 0,
              child: Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: controller.festivalNamesLists.length,
                  itemBuilder: (context, index) {
                    final data = controller.festivalNamesLists[index].category
                        .toString();
                    return GestureDetector(
                            onTap: () {
                              controller.getFestDetails(controller
                                  .festivalNamesLists[index].id
                                  .toString());
                              controller.placeholderString.value = data;
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius:
                                      BorderRadius.circular(Dimens.radiusX5),
                                ),
                                child: Center(
                                  child: Text(
                                    data,
                                    style: AppStyles.tsBold20
                                        .copyWith(color: AppColors.white),
                                  ),
                                ).paddingSymmetric(
                                    horizontal: Dimens.paddingX3)))
                        .paddingSymmetric(horizontal: Dimens.paddingX2);
                  },
                ),
              ),
            ),
            SizedBox(
              height: Dimens.paddingX3,
            ),
            Text(
              controller.placeholderString.string,
              style: AppStyles.tsBold24.copyWith(color: AppColors.blue),
            ).paddingSymmetric(horizontal: Dimens.paddingX3),
            SizedBox(
              height: Dimens.paddingX1,
            ),
            Expanded(
              flex: 1,
              child: controller.festivDayDetails.isEmpty
                  ? Container()
                  : Obx(
                      () => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: controller.festivDayDetails.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 180,
                              width: double.infinity,
                              child: Card(
                                elevation: 2,
                                surfaceTintColor: AppColors.white,
                                child: CachedNetworkImage(
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimens.radiusX3),
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  imageUrl:
                                      "${URLs.imageURl}${controller.festivDayDetails[index].image}",
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                  placeholder: (context, url) => Container(
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ).paddingSymmetric(
                                  horizontal: Dimens.paddingX2,
                                  vertical: Dimens.paddingX2),
                            );
                          }),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
