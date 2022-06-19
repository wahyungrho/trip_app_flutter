part of 'pages.dart';

class SeeMorePage extends StatefulWidget {
  final int category;
  const SeeMorePage({Key? key, required this.category}) : super(key: key);

  @override
  State<SeeMorePage> createState() => _SeeMorePageState();
}

class _SeeMorePageState extends State<SeeMorePage> {
  CategoryModel? categoryModel = CategoryModel();
  int selectedCategory = 0, isFavorite = 0;
  List<ProductModel> listProductHome = [];
  List<CategoryModel> listCategoryNameWhereSelected = [];
  bool isLoadingPage = false;

  Future<void> initialLoadPage() async {
    setState(() {
      isLoadingPage = true;
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isLoadingPage = false;
        listProductHome = listProduct;
        listCategoryNameWhereSelected = listCategory
            .where((element) => element.id == widget.category)
            .toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    initialLoadPage();
    selectedCategory = widget.category;
  }

  @override
  Widget build(BuildContext context) {
    Widget categoryWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConfig.defaultMargin,
        ),
        child:
            // category
            SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var i = 0; i < listCategory.length; i++)
                Container(
                  margin: EdgeInsets.only(
                      right: (i == listCategory.length - 1) ? 0 : 5),
                  child: CategoryWidget(
                    listCategory[i].image!,
                    nameCategory: listCategory[i].name,
                    selected:
                        (selectedCategory == listCategory[i].id) ? true : false,
                    onTap: () {
                      setState(() {
                        selectedCategory = listCategory[i].id!;
                        listCategoryNameWhereSelected = listCategory
                            .where((element) => element.id == selectedCategory)
                            .toList();
                      });
                    },
                  ),
                )
            ],
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: (isLoadingPage)
              ? null
              : AppBar(
                  title: Text(
                    (listCategoryNameWhereSelected.isNotEmpty)
                        ? (selectedCategory == 0)
                            ? "All Place"
                            : listCategoryNameWhereSelected[0].name!
                        : "",
                    style: AppConfig.titleFontStyle
                        .copyWith(color: Colors.black87),
                  ),
                  iconTheme: const IconThemeData(color: Colors.black87),
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
          body: (isLoadingPage)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : RefreshIndicator(
                  color: Theme.of(context).primaryColor,
                  onRefresh: () async {
                    setState(() {
                      isLoadingPage = true;
                    });
                    await Future.delayed(const Duration(milliseconds: 500));
                    setState(() {
                      isLoadingPage = false;
                    });
                  },
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      categoryWidget(),
                      SizedBox(height: AppConfig.defaultMargin),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConfig.defaultMargin),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Wrap(
                                  spacing: 5,
                                  runSpacing: 5,
                                  children: (selectedCategory != 0)
                                      ? listProductHome
                                          .where((element) =>
                                              element.categoryId ==
                                              selectedCategory)
                                          .map((e) => InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppConfig
                                                            .cardBorderRadius),
                                                onTap: () {
                                                  MyHelpers.goToDetailPage(
                                                      e, context);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: CardProductWidget(
                                                    imageAssets: e.image,
                                                    productModel: e,
                                                    isFavorit: () {
                                                      setState(() {
                                                        (e.isFavorite == 1)
                                                            ? e.isFavorite = 0
                                                            : e.isFavorite = 1;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ))
                                          .toList()
                                      : listProductHome
                                          .map((e) => InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppConfig
                                                            .cardBorderRadius),
                                                onTap: () {
                                                  MyHelpers.goToDetailPage(
                                                      e, context);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: CardProductWidget(
                                                    imageAssets: e.image,
                                                    productModel: e,
                                                    isFavorit: () {
                                                      setState(() {
                                                        (e.isFavorite == 1)
                                                            ? e.isFavorite = 0
                                                            : e.isFavorite = 1;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ))
                                          .toList()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      )
                    ],
                  ),
                )),
    );
  }
}
