part of 'pages.dart';

class DetailProductPage extends StatefulWidget {
  final ProductModel? productModel;
  const DetailProductPage({Key? key, @required this.productModel})
      : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.vertical(
                        bottom:
                            Radius.circular(AppConfig.cardBorderRadius + 20)),
                    child:
                        // this is carousel custom jumbotro
                        // PageView.builder(
                        //     itemCount: widget.productModel!.imagesPreview!.length,
                        //     itemBuilder: (_, i) {
                        //       num marginRightIndicator = (i ==
                        //               widget.productModel!.imagesPreview!.length - 1)
                        //           ? 0
                        //           : 5;
                        //       num marginLeftIndicator = (i ==
                        //               widget.productModel!.imagesPreview!.length - 1)
                        //           ? 5
                        //           : 0;
                        //       return Stack(
                        //         children: [
                        //           //
                        //           Center(
                        //             child: FadeInImage.assetNetwork(
                        //               placeholder: "assets/images/logo_trip.png",
                        //               image: widget.productModel!.imagesPreview![i],
                        //               height: 250,
                        //               width: MediaQuery.of(context).size.width,
                        //               fit: BoxFit.cover,
                        //               placeholderFit: BoxFit.contain,
                        //               placeholderScale: 0.7,
                        //             ),
                        //           ),
                        //           Align(
                        //             alignment: const Alignment(0, 0.9),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.center,
                        //               children: widget.productModel!.imagesPreview!
                        //                   .map(
                        //                     (e) => Container(
                        //                       height: 5,
                        //                       width: (i ==
                        //                               widget.productModel!
                        //                                   .imagesPreview!
                        //                                   .indexOf(e))
                        //                           ? 15
                        //                           : 5,
                        //                       margin: EdgeInsets.only(
                        //                           right:
                        //                               marginRightIndicator.toDouble(),
                        //                           left:
                        //                               marginLeftIndicator.toDouble()),
                        //                       decoration: BoxDecoration(
                        //                         color: (i ==
                        //                                 widget.productModel!
                        //                                     .imagesPreview!
                        //                                     .indexOf(e))
                        //                             ? Colors.white
                        //                             : Colors.grey,
                        //                         borderRadius:
                        //                             BorderRadius.circular(10),
                        //                       ),
                        //                     ),
                        //                   )
                        //                   .toList(),
                        //             ),
                        //           )
                        //         ],
                        //       );
                        //     }),

                        // jumbotron single image
                        Image.asset(
                      widget.productModel!.image!,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  top: 50,
                  left: AppConfig.defaultMargin,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: AppConfig.defaultMargin,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: AppConfig.defaultMargin,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.productModel!.name!,
                  style: AppConfig.titleFontStyle.copyWith(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  borderRadius:
                      BorderRadius.circular(AppConfig.cardBorderRadius),
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
