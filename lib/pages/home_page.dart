part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  CategoryModel? categoryModel = CategoryModel();
  int activePage = 0, selectedCategory = 0;
  List banners = [
    {
      'image': 'assets/images/img_banner_2.png',
      'title': '7 Beautiful beach',
      'subtitle': 'Bali, Indonesia',
    },
    {
      'image': 'assets/images/img_banner_1.png',
      'title': 'The Best Mountain View',
      'subtitle': 'Indonesia',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: activePage);
  }

  @override
  Widget build(BuildContext context) {
    Widget headerWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Row(
          children: [
            Image.asset(
              'assets/images/foto_profil.png',
              width: 50,
              height: 50,
            ),
            SizedBox(width: AppConfig.defaultMargin - 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Putri",
                  style: AppConfig.titleFontStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        size: 18, color: Colors.black87),
                    Text(
                      "Bali, Indonesia",
                      style: AppConfig.subTitleFontStyle.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.notifications_outlined),
          ],
        ),
      );
    }

    Widget searchWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
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
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Where do you want to go ?",
              hintStyle: AppConfig.subTitleFontStyle.copyWith(
                  color: Colors.grey[600], fontWeight: FontWeight.w400),
              suffixIcon: const Icon(Icons.search_outlined,
                  size: 24, color: Colors.grey),
              suffixIconConstraints:
                  const BoxConstraints(minHeight: 24, minWidth: 24),
            ),
          ),
        ),
      );
    }

    Widget bannerWidget() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.only(bottom: AppConfig.defaultMargin - 8, top: 10),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: banners.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              right: (index == banners.length - 1) ? 0 : 5,
                              left: (index == 0) ? 0 : 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(banners[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: (index == banners.length - 1) ? 0 : 5,
                              left: (index == 0) ? 0 : 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black26.withOpacity(0.2),
                                Colors.black54.withOpacity(0.5),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 16,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                banners[index]['title'] ?? '',
                                style: AppConfig.titleFontStyle.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(banners[index]['subtitle'] ?? '',
                                  style: AppConfig.subTitleFontStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              children: [
                const Spacer(),
                for (int i = 0; i < banners.length; i++)
                  Container(
                    margin: EdgeInsets.only(
                        left: i == 0 ? 0 : 3,
                        right: i == banners.length - 1 ? 0 : 3),
                    width: (i == activePage) ? 15 : 10,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: (i == activePage)
                          ? Colors.grey
                          : Colors.grey.withOpacity(0.5),
                    ),
                  ),
                const Spacer(),
              ],
            )
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppConfig.defaultMargin - 8),
            headerWidget(),
            SizedBox(height: AppConfig.defaultMargin - 10),
            Expanded(
                child: ListView(
              children: [
                SizedBox(height: AppConfig.defaultMargin - 10),
                searchWidget(),
                SizedBox(
                  height: AppConfig.defaultMargin - 10,
                ),
                bannerWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConfig.defaultMargin,
                      vertical: AppConfig.defaultMargin),
                  child:
                      // category
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: AppConfig.titleFontStyle
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0; i < listCategory.length; i++)
                              Container(
                                margin: EdgeInsets.only(
                                    right:
                                        (i == listCategory.length - 1) ? 0 : 5),
                                child: CategoryWidget(
                                  listCategory[i].image!,
                                  nameCategory: listCategory[i].name,
                                  selected:
                                      (selectedCategory == listCategory[i].id)
                                          ? true
                                          : false,
                                  onTap: () {
                                    setState(() {
                                      selectedCategory = listCategory[i].id!;
                                    });
                                    if (kDebugMode) {
                                      print(selectedCategory);
                                    }
                                  },
                                ),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
