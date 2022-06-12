part of 'widgets.dart';

class CardProductWidget extends StatelessWidget {
  final String? imageAssets;
  final ProductModel? productModel;
  final Function? isFavorit;
  const CardProductWidget(
      {Key? key, this.imageAssets, this.productModel, this.isFavorit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5 -
          AppConfig.defaultMargin -
          10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppConfig.cardBorderRadius),
                      topRight: Radius.circular(AppConfig.cardBorderRadius)),
                  child: Image.asset(
                    // Provide an image of the assets that have been registered
                    imageAssets!,
                    fit: BoxFit.cover,
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    frameBuilder: (context, child, frame, _) {
                      return AnimatedOpacity(
                        duration: const Duration(milliseconds: 1000),
                        opacity: frame == null ? 0 : 1,
                        child: child,
                      );
                    },
                  )),
              Positioned(
                top: 7,
                right: 7,
                child: InkWell(
                  onTap: () {
                    if (isFavorit != null) {
                      isFavorit!();
                    }
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Icon(
                      (productModel!.isFavorite == 0)
                          ? Icons.favorite_border
                          : Icons.favorite,
                      size: 20,
                      color:
                          (productModel!.isFavorite == 0) ? null : Colors.red,
                    )),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(productModel!.name!,
                      maxLines: 2,
                      style: AppConfig.titleFontStyle.copyWith(
                        color: Colors.black87,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      productModel!.rating.toString(),
                      style: AppConfig.subTitleFontStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          (productModel!.price != 0)
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        NumberFormat.currency(
                                decimalDigits: 0, symbol: 'Rp ', locale: 'id')
                            .format(productModel!.price),
                        style: AppConfig.subTitleFontStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 18,
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: Text(productModel!.location!,
                      style: AppConfig.subTitleFontStyle.copyWith(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
