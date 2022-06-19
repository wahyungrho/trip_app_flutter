part of 'pages.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  bool? isLoadingPage = false;
  int isFavorite = 0;
  loadingSession() async {
    setState(() {
      isLoadingPage = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isLoadingPage = false;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loadingSession();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (isLoadingPage!)
          ? null
          : AppBar(
              title: Text("My Favourite",
                  style:
                      AppConfig.titleFontStyle.copyWith(color: Colors.black87)),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
      body: (isLoadingPage!)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () async {
                loadingSession();
              },
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: listProduct
                    .where((element) => element.isFavorite == 1)
                    .map((e) => Padding(
                          padding: EdgeInsets.fromLTRB(
                              AppConfig.defaultMargin - 3,
                              listProduct.indexOf(e) == 0
                                  ? AppConfig.defaultMargin - 10 - 3
                                  : 0,
                              AppConfig.defaultMargin - 3,
                              10 - 3),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                                AppConfig.cardBorderRadius),
                            onTap: () {
                              MyHelpers.goToDetailPage(e, context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CardProductWidget(
                                imageAssets: e.image,
                                productModel: e,
                                isFavorit: () {
                                  setState(() {
                                    (e.isFavorite == 0)
                                        ? e.isFavorite = 1
                                        : e.isFavorite = 0;
                                  });
                                },
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
    );
  }
}
