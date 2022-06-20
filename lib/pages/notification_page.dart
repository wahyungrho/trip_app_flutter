part of 'pages.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isLoadingPage = false;
  int selectedRead = 0;
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
              title: Text("Notifications",
                  style:
                      AppConfig.titleFontStyle.copyWith(color: Colors.black87)),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
      body: (isLoadingPage)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              physics: const BouncingScrollPhysics(),
              children: notificationList
                  .map((e) => Column(
                        children: [
                          ListTile(
                            onTap: () {
                              setState(() {
                                if (e.isRead == 0) {
                                  e.isRead = 1;
                                }
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => NotificationDetail(
                                          notificationModel: e)));
                            },
                            title: Text(
                              e.title!,
                              style: AppConfig.titleFontStyle,
                            ),
                            subtitle: Text(
                              e.body!,
                              maxLines: 1,
                              style: AppConfig.subTitleFontStyle.copyWith(
                                  fontWeight: (e.isRead == 0)
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                          (notificationList.indexOf(e) !=
                                  notificationList.length - 1)
                              ? const Divider(
                                  height: 1,
                                  color: Colors.grey,
                                )
                              : const SizedBox(),
                        ],
                      ))
                  .toList()),
    );
  }
}
