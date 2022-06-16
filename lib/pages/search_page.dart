part of 'pages.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  bool isSearch = false;
  List searchList = [];

  void search(String text, List<ProductModel> list) {
    searchList.clear();
    if (text.isEmpty) {
      setState(() {});
    } else {
      for (var item in list) {
        if (item.name!.toLowerCase().contains(text.toLowerCase()) ||
            item.location!.toLowerCase().contains(text.toLowerCase())) {
          searchList.add(item);
        }
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget searchWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppConfig.defaultMargin,
            vertical: AppConfig.defaultMargin),
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: TextField(
              autofocus: true,
              controller: searchController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Where do you want to go ?",
                hintStyle: AppConfig.subTitleFontStyle.copyWith(
                    color: Colors.grey[600], fontWeight: FontWeight.w400),
                suffixIcon: (isSearch == false)
                    ? const Icon(Icons.search_outlined,
                        size: 24, color: Colors.grey)
                    : InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          searchController.clear();
                          searchList.clear();
                          setState(() {
                            isSearch = false;
                          });
                          // FocusScope.of(context).unfocus();
                        },
                        child: const Icon(Icons.clear_rounded,
                            size: 24, color: Colors.grey)),
                suffixIconConstraints:
                    const BoxConstraints(minHeight: 24, minWidth: 24),
              ),
              onChanged: (value) async {
                setState(() {
                  (value.isNotEmpty) ? isSearch = true : isSearch = false;
                });
                search(value, listProduct);
              }),
        ),
      );
    }

    Widget productListWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: searchList
                .map((e) => InkWell(
                      borderRadius:
                          BorderRadius.circular(AppConfig.cardBorderRadius),
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
                              (e.isFavorite == 1)
                                  ? e.isFavorite = 0
                                  : e.isFavorite = 1;
                            });
                          },
                        ),
                      ),
                    ))
                .toList()),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              searchWidget(),
              (searchList.isNotEmpty)
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConfig.defaultMargin),
                      child: TextTitleWidget(
                        "Search result ${searchList.length}",
                      ),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 10,
              ),
              (searchList.isEmpty)
                  ? const SizedBox()
                  : Expanded(
                      child: ListView(children: [
                      productListWidget(),
                      SizedBox(
                        height: AppConfig.defaultMargin,
                      ),
                    ])),
            ]),
      )),
    );
  }
}
