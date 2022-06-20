import 'package:flutter/material.dart';
import 'package:trip_app_flutter/models/product_model.dart';
import 'package:trip_app_flutter/pages/pages.dart';

class AppConfig {
  static String appVersion = '6';
  static double defaultMargin = 20;
  static double cardBorderRadius = 10;

  static TextStyle titleFontStyle = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static TextStyle subTitleFontStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
}

class MyHelpers {
  static void goToDetailPage(ProductModel productModel, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetailProductPage(
                productModel: productModel,
              )),
    );
  }

  static void showDialogFoto(
    BuildContext context,
    int length, {
    String? title,
    Image? imageAssets,
    Image? imageNetwork,
    List<Image>? listImageAssets,
    List<Image>? listImageNetwork,
    PageController? pageController,
  }) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
              ),
              title: Text(title ?? "",
                  style:
                      AppConfig.titleFontStyle.copyWith(color: Colors.black87)),
              content: SizedBox(
                height: MediaQuery.of(context).size.width * 0.7,
                child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppConfig.cardBorderRadius),
                    child: (length > 1)
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                                itemCount: length,
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                controller: pageController,
                                itemBuilder: (_, i) {
                                  if (listImageAssets == null) {
                                    return listImageNetwork![i];
                                  } else {
                                    return listImageAssets[i];
                                  }
                                }),
                          )
                        : imageAssets ?? imageNetwork),
              ),
            ));
  }
}
