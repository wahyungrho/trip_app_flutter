part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoadingPage = false;
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
    Widget profileHeader() {
      return Column(
        children: [
          SizedBox(
            height: AppConfig.defaultMargin,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff135DB3).withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  profileModel.image!,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: AppConfig.defaultMargin - 8,
          ),
          Text(profileModel.fullName!,
              style: AppConfig.titleFontStyle
                  .copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 5,
          ),
          Text(
            profileModel.job!,
            style: AppConfig.subTitleFontStyle
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: (isLoadingPage)
          ? null
          : AppBar(
              title: Text("My Profile",
                  style:
                      AppConfig.titleFontStyle.copyWith(color: Colors.black87)),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
      body: (isLoadingPage)
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                profileHeader(),
                SizedBox(
                  height: AppConfig.defaultMargin,
                ),
                ListTile(
                  leading: const Icon(Icons.phone_android_outlined),
                  title: Text(profileModel.phone!,
                      style: AppConfig.titleFontStyle
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
                  child: const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.mail_outline_outlined),
                  title: Text(profileModel.email!,
                      style: AppConfig.titleFontStyle
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
                  child: const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.female_outlined),
                  title: Text(profileModel.gender!,
                      style: AppConfig.titleFontStyle
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
                  child: const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_outlined),
                  title: Text(profileModel.address!,
                      overflow: TextOverflow.ellipsis,
                      style: AppConfig.titleFontStyle
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 14)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
                  child: const Divider(
                    height: 0,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppConfig.defaultMargin),
                  child: Center(
                    child: Text(
                      "Version 1.0.${AppConfig.appVersion}",
                      style: AppConfig.subTitleFontStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black54.withOpacity(0.3)),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
