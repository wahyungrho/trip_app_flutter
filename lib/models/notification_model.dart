class NotificationModel {
  int? id;
  String? title;
  String? body;
  String? images;
  int? isRead;
  String? urlPromo;
  NotificationModel({
    this.id,
    this.title,
    this.body,
    this.images,
    this.isRead,
    this.urlPromo,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
      id: 1,
      title: "Mid-Year Holideals, Diskon hingga 50% untuk Semua Produk!",
      body:
          "Liburan bareng keluarga pasti bikin senang! Makin hemat dengan promo Mid-Year Holideals, diskon hingga 50% + ekstra diskon hingga Rp475.000 untuk semua produk. Ada juga Jaminan Harga Termurah dari tiket.com! Nemu harga lain yang lebih murah? Claim dan dapetin 2x lipat selisih harga berupa tiket Points! Buktikan murahnya! \nmau ke mana? semua ada tiketnya!",
      images: "assets/images/notif_1.jpeg",
      isRead: 0,
      urlPromo: "https://www.tiket.com/promo/campaign/holideals?abButtonId=0"),
  NotificationModel(
      id: 2,
      title: "Holiday Season is Here! Have Plans Yet?",
      body:
          "Holiday season is here! Do you have any plan yet? Let’s have a family staycation while staycation discount for Hotels & Holiday Stays up to 70% with additional Rp1 mio coupon is here! \nBook it from 15 - 26 June 2022~",
      images: "assets/images/notif_2.jpeg",
      isRead: 1,
      urlPromo: "https://www.traveloka.com/en-id/promotion/ttm-accomm"),
];
