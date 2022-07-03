part of 'pages.dart';

class SuccessBookPage extends StatefulWidget {
  final ProductModel? productModel;
  final String? name;
  final String? email;
  final String? phone;
  const SuccessBookPage(
      {Key? key,
      @required this.productModel,
      this.name,
      this.email,
      this.phone})
      : super(key: key);

  @override
  State<SuccessBookPage> createState() => _SuccessBookPageState();
}

class _SuccessBookPageState extends State<SuccessBookPage> {
  bool isLoadingPage = false, isLoadingBtn = false;
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppConfig.defaultMargin * 2,
            ),
            Center(
              child: Lottie.asset(
                "assets/images/success_lottie.json",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
            SizedBox(
              height: AppConfig.defaultMargin,
            ),
            Center(
                child: Text("Thank you for booking",
                    style: AppConfig.titleFontStyle)),
            SizedBox(
              height: AppConfig.defaultMargin - 15,
            ),
            Center(
              child: Text(
                  "Please continue your registration at ${widget.productModel?.name}",
                  style: AppConfig.subTitleFontStyle),
            ),
            Container(
              height: 10,
              margin: EdgeInsets.symmetric(vertical: AppConfig.defaultMargin),
              color: Colors.grey.withOpacity(0.1),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Detail Booking", style: AppConfig.titleFontStyle),
                  SizedBox(
                    height: AppConfig.defaultMargin,
                  ),
                  RowTemplateWidget(
                    title: "Booking Code",
                    value:
                        "${Random().nextInt(9999).toString()}${widget.phone}",
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin - 4,
                  ),
                  RowTemplateWidget(
                    title: "Full Name",
                    value: widget.name,
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin - 4,
                  ),
                  RowTemplateWidget(
                    title: "Email Address",
                    value: widget.email,
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin - 4,
                  ),
                  RowTemplateWidget(
                    title: "Number Phone",
                    value: widget.phone,
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin - 4,
                  ),
                  RowTemplateWidget(
                    title: "Location",
                    value: widget.productModel?.location,
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin - 4,
                  ),
                  RowTemplateWidget(
                    title: "Date & Time",
                    value: DateFormat("dd MMMM yyyy")
                            .format(DateTime.now())
                            .toString() +
                        " - " +
                        DateFormat("HH:mm").format(DateTime.now()).toString(),
                  ),
                  SizedBox(
                    height: AppConfig.defaultMargin * 2,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            isLoadingBtn = true;
                          });
                          await Future.delayed(
                              const Duration(milliseconds: 1000), () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const MainPage()),
                                (route) => false);
                            setState(() {
                              isLoadingBtn = false;
                            });
                          });
                        },
                        child: (isLoadingBtn)
                            ? const Center(
                                child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    )))
                            : Text("Back to Home",
                                style: AppConfig.titleFontStyle),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff135DB3),
                          // border
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
