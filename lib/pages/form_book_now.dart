part of 'pages.dart';

class FormBookNow extends StatefulWidget {
  final ProductModel? productModel;
  const FormBookNow({Key? key, @required this.productModel}) : super(key: key);

  @override
  State<FormBookNow> createState() => _FormBookNowState();
}

class _FormBookNowState extends State<FormBookNow> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoadingPage = false;
  bool isLoadingBtn = false;
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

  void submit(ProductModel productModel) async {
    setState(() {
      isLoadingBtn = true;
    });
    await Future.delayed(const Duration(milliseconds: 2000), () {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
      }
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) => SuccessBookPage(
                    productModel: productModel,
                    email: _emailController.text,
                    name: _nameController.text,
                    phone: _phoneController.text,
                  )));

      setState(() {
        isLoadingBtn = false;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _nameController.text = profileModel.fullName!;
    _emailController.text = profileModel.email!;
    _phoneController.text = profileModel.phone!;
    loadingSession();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: (isLoadingPage)
            ? null
            : AppBar(
                title: Text("Form Book Now",
                    style: AppConfig.titleFontStyle
                        .copyWith(color: Colors.black87)),
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
              ),
        body: (isLoadingPage)
            ? const Center(child: CircularProgressIndicator())
            : ListView(children: [
                SizedBox(height: AppConfig.defaultMargin - 10),
                ListTile(
                  leading: SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(widget.productModel!.image!,
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: Text(
                    widget.productModel!.name!,
                    style: AppConfig.titleFontStyle,
                  ),
                  subtitle: Text(
                    widget.productModel!.location!,
                    style: AppConfig.subTitleFontStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(AppConfig.defaultMargin),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputBoxWidget(
                              controller: _nameController,
                              hintText: "Full Name"),
                          SizedBox(
                            height: AppConfig.defaultMargin - 10,
                          ),
                          InputBoxWidget(
                              controller: _phoneController, hintText: "Phone"),
                          SizedBox(
                            height: AppConfig.defaultMargin - 10,
                          ),
                          InputBoxWidget(
                              controller: _emailController,
                              hintText: "Email Address"),
                          SizedBox(
                            height: AppConfig.defaultMargin,
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  submit(widget.productModel!);
                                },
                                child: (isLoadingBtn)
                                    ? const Center(
                                        child: SizedBox(
                                            height: 30,
                                            width: 30,
                                            child: CircularProgressIndicator(
                                              color: Colors.white,
                                            )))
                                    : const Text("Book Now"),
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff135DB3),
                                  // border
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )),
                        ],
                      )),
                )
              ]),
      ),
    );
  }
}
