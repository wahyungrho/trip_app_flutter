part of 'pages.dart';

class DetailProductPage extends StatefulWidget {
  final ProductModel? productModel;
  const DetailProductPage({Key? key, @required this.productModel})
      : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  PageController _pageController = PageController();
  String category = '';
  bool isLoadingPage = false;

  void loadingSession() async {
    setState(() {
      isLoadingPage = true;
    });

    await Future.delayed(const Duration(milliseconds: 500), () {
      category = listCategory
              .where((element) => element.id == widget.productModel?.categoryId)
              .first
              .name ??
          '';

      setState(() {
        isLoadingPage = false;
      });
    });
  }

  String getUomPerPrice(categoryIdD) {
    String perPriceName = '';
    switch (categoryIdD) {
      case 3:
        perPriceName = '/night';
        break;
      case 5:
        perPriceName = '/menu';
        break;
      default:
    }

    return perPriceName;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    loadingSession();
  }

  @override
  Widget build(BuildContext context) {
    Widget imageHeaderWidget() {
      return SizedBox(
        height: 250,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                MyHelpers.showDialogFoto(
                  context,
                  1,
                  imageAssets: Image.asset(
                    widget.productModel!.image!,
                    fit: BoxFit.cover,
                  ),
                  title: widget.productModel!.name!,
                );
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(AppConfig.cardBorderRadius + 20)),
                  child:
                      // jumbotron single image
                      Image.asset(
                    widget.productModel!.image!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  )),
            ),
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
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: AppConfig.defaultMargin,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.9, 0.9),
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.star,
                        size: AppConfig.defaultMargin - 2,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Text(
                      widget.productModel!.rating!.toString(),
                      style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget widgetTitle() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productModel!.name!,
                  style: AppConfig.titleFontStyle.copyWith(
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  category,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
              onTap: () {
                setState(() {
                  if (widget.productModel!.isFavorite! == 0) {
                    widget.productModel!.isFavorite = 1;
                  } else {
                    widget.productModel!.isFavorite = 0;
                  }
                });
              },
              child: Icon(
                (widget.productModel!.isFavorite! == 0)
                    ? Icons.favorite_border
                    : Icons.favorite,
                color:
                    (widget.productModel!.isFavorite! == 0) ? null : Colors.red,
              ),
            ),
          ],
        ),
      );
    }

    Widget descriptionWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Description",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.productModel!.description!,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  color: Colors.black.withOpacity(0.7)),
            ),
          ],
        ),
      );
    }

    Widget facilitiesWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (widget.productModel!.categoryId! == 5)
                  ? "Menu Avalailable"
                  : "Facilities",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.productModel!.facilities!
                  .map((e) => Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(AppConfig.cardBorderRadius),
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.5))),
                      child: Text(e)))
                  .toList(),
            )
          ],
        ),
      );
    }

    Widget photosWidget() {
      return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Photos",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  height: 80,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.productModel!.imagesPreview!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final x = widget.productModel!.imagesPreview![index];
                      return GestureDetector(
                        onTap: () {
                          _pageController = PageController(initialPage: index);

                          MyHelpers.showDialogFoto(
                            context,
                            widget.productModel!.imagesPreview!.length,
                            title: widget.productModel!.name!,
                            pageController: _pageController,
                            listImageNetwork: [
                              for (var i = 0;
                                  i <
                                      widget
                                          .productModel!.imagesPreview!.length;
                                  i++)
                                Image.network(
                                  widget.productModel!.imagesPreview![i],
                                  fit: BoxFit.cover,
                                )
                            ],
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              right: (index ==
                                      widget.productModel!.imagesPreview!
                                              .length -
                                          1)
                                  ? 0
                                  : 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                AppConfig.cardBorderRadius),
                            child: FadeInImage.assetNetwork(
                              placeholder: "assets/images/logo_trip.png",
                              image: x,
                              height: 80,
                              width: 100,
                              fit: BoxFit.cover,
                              placeholderFit: BoxFit.contain,
                              placeholderScale: 1,
                            ),
                          ),
                        ),
                      );
                    },
                  ))
            ],
          ));
    }

    Widget addressWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                InkWell(
                  borderRadius:
                      BorderRadius.circular(AppConfig.cardBorderRadius),
                  onTap: () {
                    launchUrl(Uri.parse(widget.productModel!.urlLocation!));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Text(
                          "View Map",
                          style: AppConfig.subTitleFontStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.map_outlined,
                          size: 18,
                          color: Color(0xff135DB3),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.pin_drop_outlined,
                  size: 18,
                  color: Color(0xff135DB3),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "${widget.productModel!.address!} - ${widget.productModel!.location!}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: (isLoadingPage)
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  loadingSession();
                },
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      imageHeaderWidget(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                      widgetTitle(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                      addressWidget(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                      descriptionWidget(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                      (widget.productModel!.facilities!.isEmpty)
                          ? const SizedBox()
                          : facilitiesWidget(),
                      (widget.productModel!.facilities!.isEmpty)
                          ? const SizedBox()
                          : SizedBox(
                              height: AppConfig.defaultMargin,
                            ),
                      photosWidget(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                    ],
                  ),
                ),
              ),
        bottomNavigationBar: (widget.productModel!.price == 0 &&
                widget.productModel!.isReservation == 0)
            ? const SizedBox()
            : Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ], color: Colors.white),
                height: AppConfig.defaultMargin * 3,
                child: Row(children: [
                  (widget.productModel!.price == 0)
                      ? const SizedBox()
                      : Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: AppConfig.defaultMargin),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Start From",
                                    style: AppConfig.subTitleFontStyle.copyWith(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: NumberFormat.currency(
                                              decimalDigits: 0,
                                              locale: 'id',
                                              symbol: 'Rp ')
                                          .format(widget.productModel!.price!),
                                      style: AppConfig.titleFontStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    TextSpan(
                                        text: getUomPerPrice(
                                            widget.productModel!.categoryId),
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.grey)),
                                  ])),
                                )
                              ],
                            ),
                          ),
                        ),
                  (widget.productModel!.isReservation == 0)
                      ? const SizedBox()
                      : Expanded(
                          child: SizedBox(
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => FormBookNow(
                                            productModel: widget.productModel,
                                          )));
                            },
                            child: Text("Book Now",
                                style: AppConfig.titleFontStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              shape: (widget.productModel!.price == 0)
                                  ? null
                                  : RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              AppConfig.defaultMargin)),
                                    ),
                            ),
                          ),
                        )),
                ])));
  }
}
