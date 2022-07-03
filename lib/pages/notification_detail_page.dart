part of 'pages.dart';

class NotificationDetail extends StatefulWidget {
  final NotificationModel? notificationModel;
  const NotificationDetail({Key? key, this.notificationModel})
      : super(key: key);

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  bool isLoadingPage = false;
  loadingSession() async {
    setState(() {
      isLoadingPage = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        notificationList.sort((a, b) => a.isRead!.compareTo(b.isRead!));
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
      appBar: (isLoadingPage)
          ? null
          : AppBar(
              title: Text("Detail Information",
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
                Image.asset(
                  widget.notificationModel!.images!,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: AppConfig.defaultMargin,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppConfig.defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.notificationModel!.title!,
                        textAlign: TextAlign.center,
                        style: AppConfig.titleFontStyle,
                      ),
                      SizedBox(
                        height: AppConfig.defaultMargin - 10,
                      ),
                      Text(
                        widget.notificationModel!.body!,
                        style:
                            AppConfig.subTitleFontStyle.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: AppConfig.defaultMargin - 10,
                      ),
                      Text(
                        "Selengkapnya kunjungi link dibawah ini: ",
                        style:
                            AppConfig.subTitleFontStyle.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: AppConfig.defaultMargin - 15,
                      ),
                      InkWell(
                        borderRadius:
                            BorderRadius.circular(AppConfig.cardBorderRadius),
                        onTap: () {
                          launchUrl(
                              Uri.parse(widget.notificationModel!.urlPromo!));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            widget.notificationModel!.urlPromo!,
                            style: AppConfig.subTitleFontStyle.copyWith(
                                height: 1.5, color: const Color(0xff135DB3)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
