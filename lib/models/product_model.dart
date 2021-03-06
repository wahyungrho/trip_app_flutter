class ProductModel {
  int? id;
  int? categoryId;
  String? name;
  String? description;
  List? facilities;
  String? image;
  List? imagesPreview;
  int? price;
  double? rating;
  String? location;
  String? urlLocation;
  String? address;
  int? isReservation;
  int? isFavorite;
  int? isPopular;

  ProductModel({
    this.id,
    this.categoryId,
    this.name,
    this.description,
    this.facilities,
    this.image,
    this.imagesPreview,
    this.price,
    this.rating,
    this.location,
    this.urlLocation,
    this.address,
    this.isReservation,
    this.isFavorite,
    this.isPopular,
  });
}

List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    categoryId: 1,
    name: "Mount Batur",
    description:
        "Mount Batur is located in Kintamani, Bangli. Mount Batur is known by the Balinese people as a special mountain besides Mount Agung. This mountain is also known as one of the tourist attractions in Bali. The attraction of this mountain is the lake with the same name, namely Lake Batur. This lake is located at an altitude of 1,050 meters above sea level with an area of ​​16 square kilometers and an average depth of 50.8 kilometers. Not only that, Mount Batur's fame is also due to being awarded the UNESCO title as the first mountain geopark in Indonesia. So, if you manage to climb this mountain, it means that you have visited one of the places recognized by UNESCO. The height of Mount Batur is 1,717 masl. If it's your first time climbing a mountain it's also allowed. This is because the existing tracks are fairly safe for beginners. It takes about 2-3 hours to reach the peak.",
    facilities: [],
    image: "assets/images/gunung_batur.jpg",
    imagesPreview: [
      'https://source.unsplash.com/1600x900/?mount-batur&1',
      'https://source.unsplash.com/1600x900/?mount-batur&2',
      'https://source.unsplash.com/1600x900/?mount-batur&3',
      'https://source.unsplash.com/1600x900/?mount-batur&4',
      'https://source.unsplash.com/1600x900/?mount-batur&5'
    ],
    price: 0,
    rating: 4.5,
    location: "Kintamani, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Gn.+Batur/@-8.2401297,115.3687396,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd1f403c8e8ee3f:0xd38045afa18670b4!8m2!3d-8.2401299!4d115.3774944",
    address: "Batur Sel., Kec. Kintamani, Kabupaten Bangli, Bali",
    isReservation: 0,
    isFavorite: 1,
    isPopular: 1,
  ),
  ProductModel(
    id: 2,
    categoryId: 1,
    name: "Mount Catur",
    description:
        "Mount Catur has another name Mangu Peak. The name is usually spoken by the people of Bali. The location of Mount Catur is in the Bedugul area. This mountain has an altitude of 2,095 meters above sea level. If you climb this mountain, it takes about 2.5 hours to reach the top. When you reach the top of the mountain, you will be satisfied by the view of Lake Beratan and Lake Buyan. Not only that, its location in the middle of the mountain range of Bali, makes it have a background of all mountains. You can see the charm of the mountains in Bali when you reach the top of Mount Catur. Uniquely this mountain, at its peak there is the Puncak Mangu Temple which is usually used as a place of worship for Hindus.",
    facilities: [],
    image: "assets/images/gunung_catur.jpg",
    imagesPreview: [
      'https://source.unsplash.com/1600x900/?mountain-indonesia&1',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&2',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&3',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&4',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&5'
    ],
    price: 0,
    rating: 4.3,
    location: "Pelaga, Badung - Bali",
    urlLocation:
        "https://www.google.com/maps/place/Gn.+Catur/@-8.2475708,115.177238,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd18eaadf660b7b:0x48cdcef1aca7cd65!8m2!3d-8.247571!4d115.1859928",
    address: "Pelaga, Kec. Petang, Kabupaten Badung, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 3,
    categoryId: 1,
    name: "Mount Abang",
    description:
        "Mount Abang has a hiking trail called the Songan Trail. This route is considered the longest hiking trail in Bali because it has a horizontal path. There is another route that you can take, namely the Suter Village Path. The height of this mountain is 2,151 masl. At the bottom of the mountain there is Lake Batur which is said to be a source of water for the Balinese tribal community. The attraction of this mountain is that you can see green trees that are evenly distributed and cover the sand dune.",
    facilities: [],
    image: "assets/images/gunung_abang.jpg",
    imagesPreview: [
      'https://source.unsplash.com/1600x900/?mountain-indonesia&1',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&2',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&3',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&4',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&5'
    ],
    price: 0,
    rating: 4.4,
    location: "Kintamani, Bangli - Bali",
    urlLocation:
        "https://www.google.com/maps/place/Gn.+Abang/@-8.2802776,115.4206896,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd1f7adac28eb37:0x7e0239cd53b4be4b!8m2!3d-8.2802778!4d115.4294444",
    address: "Abangsongan, Kec. Kintamani, Kabupaten Bangli, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 4,
    categoryId: 1,
    name: "Mount Batukaru",
    description:
        "Higher than Mount Abang, Mount Batukaru is also one of the favorite destinations for mountain tourism in Bali. This mountain has an altitude of 2,276 meters above sea level. Mount Batukaru serves as a source of life for the people living in Central Bali. Its upstream rivers that never recede and its clear waters have been the lifeblood of the people of Central Bali since ancient times. When climbing Mount Batukaru, you will see a temple that is still active as a place of worship for Hindus. There is a temple that is still active, indicating that this path is fairly easy to climb because there is already a path built to get to the temple.",
    facilities: [],
    image: "assets/images/gunung_batukaru.jpg",
    imagesPreview: [
      'https://source.unsplash.com/1600x900/?mountain-indonesia&1',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&2',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&3',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&4',
      'https://source.unsplash.com/1600x900/?mountain-indonesia&5'
    ],
    price: 0,
    rating: 4.5,
    location: "Tabanan, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Gn.+Batukaru/@-8.334722,115.079023,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd187f8b41bd26f:0x688908b6268505d3!8m2!3d-8.3347222!4d115.0877778",
    address: "Wongaya Gede, Kec. Penebel, Kabupaten Tabanan, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 5,
    categoryId: 2,
    name: "Kelingking Beach",
    description:
        "There are interesting things that we must know before you visit the little finger beach, namely about a very familiar name among tourists, especially foreign tourists with the nickname Kelingking Secret Point. The Kelingking Beach area used to be popular with the name Secret Point, which turned out to have quite an interesting origin. As well as having uniqueness such as other beaches such as the history of the Pandawa beach in Bali, the history of the Nusa Penida beach and the history of the Tanah Lot temple in Bali. Where is the historical background of the name secret point, because in the past every tourist could only enjoy the beauty of the little finger beach only from a distance. At a place or spot (Secret Point) that is made independently by the local community for visitors. As time goes by, Bali tourism is growing and many tourists are exploring hidden tourist spots in Bali, finally a road is made that makes it easier for visitors to get down and access down to Atuh beach to enjoy or play on white, beautiful and exotic sand.",
    facilities: [
      'Camping Area',
      'Beach',
      'Restaurant',
      'Parking Lot',
      'Toilet',
    ],
    image: "assets/images/pantai_kelingking.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keeksotisan-pantai-kelingking-nusa-penida.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pasir-putih-di-pantai-kelingking-nusa-penida-1.png',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/tebing-di-pantai-kelingking-nusa-penida.jpg'
    ],
    price: 0,
    rating: 4.6,
    location: "Nusa Penida, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Kelingking+Beach+Nusa+Penida/@-8.4898383,115.038712,10z/data=!4m9!1m2!2m1!1spantai+kelingking!3m5!1s0x2dd26f1616cd2cc7:0xee84b7df0afbff19!8m2!3d-8.7503865!4d115.4726218!15sChFwYW50YWkga2VsaW5na2luZ1oTIhFwYW50YWkga2VsaW5na2luZ5IBEnRvdXJpc3RfYXR0cmFjdGlvbpoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VReWEzUlFaVmgzRUFF",
    address: "Bunga Mekar, Kec. Nusa Penida, Kabupaten Klungkung, Bali",
    isReservation: 0,
    isFavorite: 1,
    isPopular: 1,
  ),
  ProductModel(
    id: 6,
    categoryId: 2,
    name: "Seseh Beach",
    description:
        "Seseh Munggu Beach Bali is one of the beaches in Bali that offers an exotic beach whose blue sea water is charming and beautiful and soothing to the eye for those who see it. The coastline of Seseh Munggu Bali is located in Mengwi, Badung Regency, Bali which has a long coastline and allows you to do all beach tourism activities there. Such as playing beach soccer, jogging or just taking a walk and sunbathing, bathing in the sun, playing volleyball and taking pictures to capture your moments on vacation at Seseh Munggu beach in Bali. And in the late afternoon when the sun begins to sink on the eastern horizon, to enjoy the sunset. The big waves have even become a fun beach in Bali to surf and some of them are fun places in Bali to do extreme sports such as kitesurf and not only that, there are tourists who come with their sons and daughters because Seseh beach is waiting for Bali to be one of the beach tourism for children in Bali which is the ideal choice for many families.",
    facilities: ['Restaurant', 'Home Stay'],
    image: "assets/images/pantai_seseh.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-sesseh-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keindahaan-pantai-seseh-munggu-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pasir-pantai-seseh-munggu-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/sunset-di-pantai-seseh-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/view-pantai-seseh-bali-1.jpg'
    ],
    price: 0,
    rating: 4.7,
    location: "Mengwi, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Jl.+Pantai+Seseh,+Kec.+Mengwi,+Kabupaten+Badung,+Bali,+Indonesia/@-8.633155,115.114563,13z/data=!4m5!3m4!1s0x2dd23812bd379101:0x6be9fe0021552e02!8m2!3d-8.633155!4d115.1145627?hl=en-US",
    address: "Cemagi, Kec. Mengwi, Kabupaten Badung, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 7,
    categoryId: 2,
    name: "Atuh Beach",
    description:
        "There is something unique about the island on Atuh beach, namely Melawang/Pepadasan Island, where the local people call it \"Batu Bolong\" which at first glance is similar to Batu Bolong Beach in Canggu and there is a myth or belief from the surrounding community, that every fishing boat that will sail from the coast of Atuh to the open sea, which first passes through a hole on the island of Fighting or the island of Pepadas and this myth is still firmly held by the surrounding community.Not only that, not far from the location of the Atuh beach, there is a Balinese temple which is visited by many Balinese Hindus, especially during \"Rerahinan\" and what's interesting is that near the temple there are 2 springs, the first is a spring. sacred which is used for religious ceremonies. The other water source is used by residents around Pejukutan and Tanglad villages for their daily needs. It is said that according to the story, the existence of a spring at Atuh Beach was found by residents who saw the turtle turtle drinking under a coconut tree, and at night the residents received an inspiration or revelation to make a spring at the location where the turtle turtle drank.",
    facilities: ['Camp Area', 'Molenteng Stone Tree House'],
    image: "assets/images/pantai_atuh.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keindahan-pantai-atuh-nusa-penida.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/rumah-batu-molenteng-penida.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-atuh-nusa-penida-1.jpg'
    ],
    price: 0,
    rating: 4.7,
    location: "Nusa Penida, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Nusa+Penida+Tour+-+Atuh+Beach/@-8.7734113,115.6130639,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd2779b403c8185:0x25d68418b583cab3!8m2!3d-8.7734116!4d115.6218187",
    address: "Pejukutan, Kec. Nusa Penida, Kabupaten Klungkung, Bali 80771",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 1,
  ),
  ProductModel(
    id: 8,
    categoryId: 2,
    name: "Serenity Beach",
    description:
        "Something that is one of the attractions of Serenity Beach Nusa Dua Bali is its very popular exotic which offers beautiful white sand beaches, At Serenity Beach Nusa Bali you can also see and enjoy beaches whose views are so beautiful and beautiful with soft white sand that really captivating. Many ask why the beaches in Nusa Dua are very popular for their cleanliness? This is inseparable from the function of the Nusa Dua tourist area which has been an elite area and international standard resort area. Therefore, there are a lot of cleaners in the Nusa Dua tourist area.",
    facilities: [],
    image: "assets/images/pantai_serenity.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pasir-putih-di-pantai-serenity-nusa-dua-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-serenity-nusa-dua.jpg',
    ],
    price: 0,
    rating: 4.7,
    location: "Nusa Dua, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Pantai+Sawangan/@-8.8405852,115.1392791,12.84z/data=!4m13!1m7!3m6!1s0x2dd2433b2d3732df:0x15609a79dd600cb!2sJl.+Nusa+Dua,+Benoa,+Kec.+Kuta+Sel.,+Kabupaten+Badung,+Bali+80361!3b1!8m2!3d-8.8188174!4d115.2180323!3m4!1s0x2dd25cc45df40bfd:0xca9a4df5bb77fea1!8m2!3d-8.8255579!4d115.2210689",
    address: "Jl. Gn. Payung I, Benoa, Kec. Kuta Sel., Kabupaten Badung, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 9,
    categoryId: 2,
    name: "Pasut Tabanan Beach",
    description:
        "The first thing that is interesting which is one of the uniqueness and at the same time becomes a different attraction from other beaches in Bali, namely the soft black sand beach that gives a beauty charm that looks very beautiful in the morning where the reflection of sunlight hitting the sand can be seen. beautiful and sparkling like a pearl. The natural panorama of the beach is stunning with views that we can see with the many coconut trees and the air is very fresh and far from pollution. What's more interesting is that Pasut Tabanan beach also has characteristics around the beach that there are no cliffs or coral hills, and after the eye looks at the charm of the beauty of the sea is very clear and visible. Uniquely, right to the west there is a meeting of sea water with the flow of the Yeh Po river which empties into this Tabanan beach. Friends of Baligetaway, this tidal beach area has a wide and gentle stretch of sand so that it becomes a safe and comfortable beach where the sea waves are not too big and high. Therefore, do not be surprised when you come there you can see many tourists who are busy doing tourist activities there. Starting from sunbathing activities, playing sand, playing sports and also playing volleyball and football to swimming activities.",
    facilities: [],
    image: "assets/images/pantai_pasut.jpg",
    imagesPreview: [
      'https://www.superlive.id/storage/superadventure/2018/09/26/x1debb078293b.jpg.pagespeed.ic.47oY3Dt6q1.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-pasut.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-pasut-tabanan-bali.jpg',
    ],
    price: 0,
    rating: 4.5,
    location: "Tabanan, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Pantai+Pasut/@-8.5634165,115.0279875,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd23122e42d049b:0xb8644744b2f08ac3!8m2!3d-8.563438!4d115.0367423",
    address:
        "Jalan Raya Pasut, Tibubiu, Kec. Kerambitan, Kabupaten Tabanan, Bali",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 0,
  ),
  ProductModel(
    id: 10,
    categoryId: 2,
    name: "Purnama Beach",
    description:
        "This Purnama Beach has a history or origin until it is named Purnama Beach. The origin of the name Purnama Beach is historical because at full moon tourists are always visited. The charm of the beauty of the full moon night on this gianyar beach is very exotic and no less romantic than other beaches on the island of Bali. Many tourists who visit the Purnama Beach in Gianyar are couples from young people and also not a few tourists who bring their wives and children. The beach atmosphere around it is still very beautiful and there are not too many visitors so it feels very quiet and calm making it a beach tourist spot or a favorite destination for families and recommended children's attractions to visit.",
    facilities: [],
    image: "assets/images/pantai_purnama.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keindahan-pantai-purnama.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-purnama.jpg',
    ],
    price: 0,
    rating: 4.2,
    location: "Gianyar, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Pantai+Purnama/@-8.619297,115.309972,13z/data=!4m5!3m4!1s0x2dd215148c93693d:0x385d0c1b1fbff51b!8m2!3d-8.6192976!4d115.3099717?hl=en-US",
    isReservation: 0,
    address: "Sukawati, Kec. Sukawati, Kabupaten Gianyar, Bali",
    isFavorite: 1,
    isPopular: 1,
  ),
  ProductModel(
    id: 11,
    categoryId: 2,
    name: 'Pantai Melasti',
    description:
        "Melasti Beach is one of the most exotic beaches because its location is very hidden and behind a cliff and has a historical story that is almost the same as Pandawa beach. The location of Melasti Beach is behind a towering limestone hill so that to reach the visitors you have to pass through a limestone cliff wall that is so stunning that it reaches the exotic white sandy beach which is equipped with a small pond like a natural pond. Because of its isolated location, this Melasti beach is still not widely known by tourists. However, the difference is that after the opening of the access road to the beach location so that currently it can be passed by vehicles such as cars by splitting the cliffs, which makes the attraction of Melasti Beach extraordinary, not inferior to Pandawa Beach.",
    facilities: ['Hotel'],
    image: "assets/images/pantai_melasti.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/wisata-pantai-melasti-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/objek-wisata-pantai-melasti.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-melasti-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-melasti-ungasan-bali.jpg'
    ],
    price: 0,
    rating: 4.5,
    location: "Ungasan, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Pantai+Melasti+Ungasan/@-8.8477419,115.1561857,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd25b937f74a77f:0xd7fc41e66544fbab!8m2!3d-8.8477419!4d115.1606704",
    address: "Bali, Kabupaten Badung, Kec. Kuta Sel., Ungasan, Unnamed Road",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 1,
  ),
  ProductModel(
    id: 12,
    categoryId: 2,
    name: 'Batu Belig Beach',
    description:
        "There are many beautiful beaches in Bali, one of which is Batu Belig beach, it's no wonder that this tourist attraction on the northern Kerobokan beach is a favorite beach visited by many tourists. Hearing the name Batu Belig beach, it is not as popular as Kuta Beach in Bali, but its exoticism is no less and guaranteed to amaze with treats of natural beauty and a beach atmosphere that does not exist on other beaches. The panorama of the beauty of Batu Belig beach which is in Kerobokan Kuta is so extraordinary and exotic and romantic when the twilight sun overshadows Batu Belig beach. The rays of the sun that gradually sink every second cause the effect of a red color in the sky which makes the most beautiful moment for visitors to Batu Belig beach. The panorama on Batu Belig beach is like a natural painting given by the almighty which creates a romantic atmosphere and coolness of heart for those who witness it.",
    facilities: ['Cafetaria', 'Souvenir Shop', 'Hotel'],
    image: "assets/images/pantai_batu_belig.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keindahan-pantai-batu-belig.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ombak-di-pantai-batu-belig-kerobokan-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/suasana-di-pantai-batu-belig-kerobokan-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pasir-pantai-batu-belig-kerobokan-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/sunset-di-pantai-batu-belig-kerobokan-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pantai-batu-belig.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/main-layang-layang-di-pantai-batu-belig-kerobokan.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/surga-di-pantai-batu-belig.jpg',
    ],
    price: 0,
    rating: 4.5,
    location: "Kerobokan, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Pantai+Batu+Belig/@-8.660057,115.1403734,14z/data=!4m8!1m2!2m1!1sPantai+Berawa+Canggu!3m4!1s0x2dd24774c0a631b1:0x9d16e84a9b99cabd!8m2!3d-8.6742449!4d115.1459553",
    address:
        "Jl. Batu Belig, Kerobokan Kelod, Kec. Kuta Utara, Kabupaten Badung, Bali 80361",
    isReservation: 0,
    isFavorite: 1,
    isPopular: 0,
  ),
  ProductModel(
    id: 13,
    categoryId: 2,
    name: "Suwehan Beach",
    description:
        "Suwehan Beach in Tanglad Nusa Penida offers a unique attraction where this beach has special characteristics and not all beaches in Bali are made into triangular beach icons like the famous brand Volcom, among local residents Suwehan Beach resembles the object of Pipi Island Thailand. Suwehan Beach is a beautiful white sandy beach and is still beautiful, the sea water is blue with waves that are not too big and surrounded by high coral cliffs.",
    facilities: [],
    image: "assets/images/pantai_suwehan.jpeg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/keindahan-pantai-suwehan-nusa-penida.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/pasir-putih-pantai-suwehan.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/aktifitas-pantai-suwehan-nusa-penida.jpg'
    ],
    price: 0,
    rating: 4.4,
    location: "Nusa Penida, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Suwehan+Beach/@-8.795374,115.5969334,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd279cfc7815793:0x2062f9f84602e8f5!8m2!3d-8.7953743!4d115.6056882",
    address: "Tanglad, Kec. Nusa Penida, Kabupaten Klungkung, Bali 80771",
    isReservation: 0,
    isFavorite: 0,
    isPopular: 1,
  ),
  ProductModel(
    id: 14,
    categoryId: 3,
    name: 'Baleka Resort & Spa',
    description:
        "Located in the colorful tourist district of Legian, Baleka Resort and Spa is close to everything that makes a Bali holiday enjoyable. This family-friendly property offers a choice of stylish room categories to anticipate all travel needs. It is a comfortable home base where guests are welcomed with warm Balinese hospitality. Baleka Resort and Spa is one of the best choices in Legian. Just a 5-minute walk from the white sandy beach of Legian Beach, Baleka Resort and Spa features an outdoor swimming pool with a swim-up bar, as well as modern Balinese architecture. Surrounded by gardens, the hotel also features spa treatments and free Wi-Fi. With plenty of natural light, air-conditioned rooms feature a private balcony, wooden furnishings and artwork. Guests have the convenience of a minibar and satellite TV, as well as free drinking water. The en suite bathroom comes with a shower or bath. Located between Kuta and Seminyak, Baleka Resort and Spa is a 20-minute drive from Ngurah Rai International Airport. Shuttle service is provided upon request. To relax, guests can take a dip in the outdoor swimming pool or enjoy a relaxing massage. Recreational activities and day trips can be arranged at the tour desk. Gula - Gula Restaurant serves a variety of Indonesian, Chinese and Western dishes. Meals can be served in the room.",
    facilities: [
      'Classic Room',
      'Superior Room',
      'Deluxe Room',
      'Lagoon Room Pool View',
      'Lagoon Room Pool Access',
      'Two-Bedroom Family',
      'Deluxe Day Bed'
    ],
    image: "assets/images/baleka-resort-spa.jpg",
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/baleka-resort-classic-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/balik-resort-spa-superior-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/baleka-resort-spa-deluxer-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/balek-resort-spa-lagoon-room-pool-view.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/baleka-resort-spa-lagoon-room-pool-access.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/baleka-resort-spa-two-bedroom-family.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/baleka-resort-spa-deluxe-day-bed.jpg',
    ],
    price: 380000,
    rating: 4.3,
    location: "Kuta, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Baleka+Resort+%26+Spa/@-8.700099,115.167293,15z/data=!4m8!3m7!1s0x0:0x4baec4abfebcfd26!5m2!4m1!1i2!8m2!3d-8.7000817!4d115.1673402",
    address:
        "Jl. Werkudara Jl. Raya Legian, Legian, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 15,
    categoryId: 3,
    name: "Grand Inna Kuta",
    description:
        "Located on the white sandy beach of Kuta with its beautiful sunsets, Hotel Grand Inna Kuta offers direct access to the famous Kuta Beach besides being only a 5 - 10 minute walk to shopping malls and entertainment areas. Only 5 km from Ngurah Rai International Airport, 10 km from Denpasar City. With its refreshing hospitality concept, Grand Inna Kuta Hotel offers two different design styles in accommodation - Bali Wing and Beach Wing with a total of 322 rooms, family rooms and suites. Featuring a traditional room style with a private balcony in each room, Bali Wing is designed for those seeking a Balinese atmosphere. Alternatively, the modern touch at the Beach Wing offers a contemporary setting with a wide choice of views ranging from pool, sea or garden views.",
    facilities: [
      'Deluxe Room',
      'Deluxe Pool View',
      'Deluxe Sea View',
      'Deluxe Pool Access',
      'Superior Pool View',
      'Executive Suite'
    ],
    image: 'assets/images/hotel_grand_inna.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-inna-deluxe-room.jpg',
      'https://baligetaway.co.id/wp-content/uploads/2014/10/Grand-Inna-Kuta-Deluxe-Pool-View.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-inna-hotel-deluxe-sea-view.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-inna-hotel-deluxe-pool-access.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-inna-hotel-superior-pool-or-garden-view-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-inna-hotel-superior-pool-access.jpg',
    ],
    price: 610000,
    location: "Kuta, Bali",
    rating: 4.5,
    urlLocation:
        "https://www.google.com/maps/place/Grand+Inna+Kuta/@-8.7231271,115.1683566,17z/data=!3m1!4b1!4m8!3m7!1s0x2dd246bca25e1947:0xcfd2766242240538!5m2!4m1!1i2!8m2!3d-8.7231271!4d115.1705453",
    address:
        "Jl. Pantai Kuta No.1, Pande Mas, Kuta, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 1,
    isPopular: 1,
    isReservation: 1,
  ),
  ProductModel(
    id: 16,
    categoryId: 3,
    name: "Swiss-Belhotel Petitenget",
    description:
        "Located in the heart of trendy Petitenget and surrounded by great restaurants, beach clubs, cafes and shops, Swiss-Belhotel Petitenget is the ideal choice for you! With easy access to popular places such as Petitenget Beach, Batu Belig Beach and Tanah Lot Temple, this hotel is only 12 km from Ngurah Rai International Airport and not far from the hotel, Swiss-Belhotel Petitenget Hotel is also located in the elite area of ​​Bali. classy. Where else will you live? It's happening all around you in Petitenget! Swiss-Belhotel Petitenget is a mid-range hotel in Bali, located in the heart of the trendy Petitenget area. The hotel offers 112 modern comfortably furnished rooms that combine contemporary décor with traditional Balinese touches to create the most peaceful and relaxing atmosphere. Enjoy delicious Balinese cuisine at our very own Paon Restaurant or relax at the trendy Sanjé Bar and Lounge, the perfect place to rejuvenate your mind and soul with signature cocktails and other Balinese specialties. Both are 'must do' if your food and drink adventure in Petitenget. And when your unforgettable day of adventure is over, enjoy a refreshing dip in our outdoor swimming pool and relax in the beautifully landscaped surroundings on the ground floor.",
    facilities: [
      'Deluxe Room',
      'Deluxe Room Paddy View',
      'Grand Deluxe Room',
      'Raga SPA & Reflexology',
      'Shuttle Bus To Petitenget Beach and Seminyak Square',
      'Swimming Pool',
      'Fitness Place'
    ],
    image: 'assets/images/hotel_petitenget.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/deluxe-room-swiss-belhotel-petitenget.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ricepaddy-swiss-belhotel-petitenget.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-deluxe-room-swiss-belhotel-petitenget.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/raga-spa.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/kolam-renang-swiss-belhotel-petitenget.jpg'
    ],
    price: 300000,
    rating: 4.4,
    location: "Petitenget, Bali",
    urlLocation:
        "https://www.google.com/maps/place/The+Aveda+Boutique+Hotel/@-8.672205,115.16254,13z/data=!4m8!3m7!1s0x0:0x28e7a152c7a2b661!5m2!4m1!1i2!8m2!3d-8.671973!4d115.1625851?hl=en-US",
    address:
        "Jalan Petitenget No.168 Kerobokan Kelod, Seminyak, Kec. Kuta Utara, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 17,
    categoryId: 3,
    name: "Dafam Savvoya",
    description:
        "Ideally located at the crossroads of Denpasar, Sanur, Seminyak and Kuta, surrounded by state-of-the-art shopping malls, wholesale craft shops and entertainment. This location hosts a wide range of holiday needs with a luxurious lifestyle of privacy to enjoy and explore all the beauty of this paradise island. Hotel Dafam Savvoya Seminyak Bali provides 111 stylish rooms, 3 meeting rooms that can accommodate up to 120 people, Canting dining area that combines traditional and international dishes, and 2 refreshing swimming pools that reflect traditional Balinese hospitality and casual elegance. Only 30 minutes drive from and to the airport and few minutes to the famous Kuta Beach area. Hotel Dafam Savvoya Seminyak Bali is the ideal retreat to enjoy the Island of the Gods.",
    facilities: ['Canting Restaurant', 'Ruang Meeting Kresna & Drupadi'],
    image: 'assets/images/hotel_dafam_savvoya.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/dafam-savvoya-hotel-superior-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/dafam-savvoya-deluxe-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/dafam-savvoya-suite-room.jpg',
    ],
    price: 300000,
    rating: 4.3,
    location: "Seminyak, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Hotel+Dafam+Savvoya+Seminyak+Bali/@-8.68279,115.167034,13z/data=!4m8!3m7!1s0x0:0x23c8659171e5844c!5m2!4m1!1i2!8m2!3d-8.6828771!4d115.1672526?hl=en-US",
    address:
        "Jl. Mertanadi No.14, Seminyak, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 18,
    categoryId: 3,
    name: "Hotel Steenkool",
    description:
        "Enjoy your holiday in Bali with a pleasant stay at Hotel Steenkool Seminyak which is located on the main Sunset Road Seminyak, a good block No. 1, which is only 30 minutes from the airport and 15 minutes to Double Six Beach where you can enjoy the beautiful sunset over the beach. Bali. With 98 rooms, you can make the choice to stay at the superior Hotel Steenkool Seminyak or in our Junior suite with Balinese hospitality served by our staff. Enjoy a wide variety of food served on the buffet at breakfast and a la carte menu options at lunch and dinner. Spend your wonderful holiday relaxing in our swimming pool in front of Hotel Steenkool Seminyak bar while enjoying fresh cocktails on the lobby floor, you can also play pool after lunch or dinner on the lobby floor. Enjoy our BBQ Buffet Dinner only on Saturday night with live acoustics for your unforgettable weekend.",
    facilities: ['Restaurant and Bar', 'Meeting Room'],
    image: 'assets/images/hotel_steenkool.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-steenkool-seminyak-suite-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-steenkool-seminyak-superior-king.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-steenkool-superior-twin.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/steenkool-seminyak-hotels-restaurant.png',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/steenkool-seminyak-hotels-meeting-room.png'
    ],
    price: 280000,
    rating: 4.2,
    location: "Seminyak, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Steenkool+Seminyak+Hotel/@-8.692541,115.173326,13z/data=!4m8!3m7!1s0x0:0xb803634656098ac7!5m2!4m1!1i2!8m2!3d-8.692541!4d115.173326?hl=en-US",
    address:
        "Jalan Sunset Road, Gg Baik-Baik No.1, Kuta, Seminyak, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 19,
    categoryId: 3,
    name: "Akmani Legian",
    description:
        "Located in a prime location of Legian, Hotel Akmani Legian is a 4-star hotel with a modern-minimalist chic design with a blend of natural elements. It is strategically located within the many boutique shopping and eateries in Bali's most favorite area, Jalan Legian. Each room at Hotel Akmani Legian is equipped with air conditioning and a flat screen TV, each room combines modern furnishings with traditional Balinese designs. Hotel Akmani Legian is a 5-minute walk from Kuta Beach and Ground Zero Legian and a 15-minute drive to Ngurah Rai International Airport from the hotel which also offers airport shuttle services at an additional cost. Guests can also enjoy amenities such as relaxing massages, working out at the gym or exploring the area with a rental car. For those of you who want to enjoy dishes, you can try Bell Piatto Cafe with a choice of Indonesian, Asian, and western dishes.",
    facilities: ['Grand Deluxe', 'Poolside Grand Deluxe', 'Suite', 'Dining'],
    image: 'assets/images/hotel_akmani.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/akmani-legian-deluxe.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/akmani-legian-grand-deluxe.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/akmani-legian-suite-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/akmani-legian-dining.jpg'
    ],
    price: 380000,
    rating: 4.3,
    location: "Legian, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Akmani+Legian/@-8.7129409,115.1708964,17z/data=!3m1!4b1!4m8!3m7!1s0x2dd246c76c71c5a5:0xc3260bfe286aaf3!5m2!4m1!1i2!8m2!3d-8.7129462!4d115.1730851?hl=en-US",
    address:
        "Jl. Raya Legian No.177, Kuta, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 20,
    categoryId: 3,
    name: "Siesta Legian Hotel",
    description:
        "Hotel Siesta Legian is located in the heart of Legian, Kuta and the center point of Bali's famous hustle and bustle, just steps from the famous Kuta & Legian Beach. Our 119 spacious rooms are the answer for those who need a relaxing time after a fun-filled day in Bali.",
    facilities: [
      'Meeting Room',
      'Lobby Lounge',
      'SPA',
      'Restaurant',
      'Swimming Pool'
    ],
    image: 'assets/images/hotel_siesta.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-siesta-legian.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/siesta-legian-suite-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/siesta-hotel-legian-family-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/siesta-hotel-superior-room-double.jpg',
    ],
    price: 300000,
    rating: 4.3,
    location: "Legian, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Siesta+Legian+Hotel/@-8.707295,115.172398,13z/data=!4m8!3m7!1s0x0:0x5753a7459588f3f4!5m2!4m1!1i2!8m2!3d-8.7072955!4d115.1723983?hl=en-US",
    address: "Jl. Bunut Sari No.8, Legian, Kec. Kuta, Kuta, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 21,
    categoryId: 3,
    name: "Neo Plus Kuta Legian",
    description:
        "Neo Plus Kuta Legian Hotel Surrounded by famous tourist attractions, Hotel NEO + Kuta Legian is the ideal location to start enjoying your holiday in the most famous tourist center as well as the lively nightlife at Jalan Legian, Kuta Beach and Beachwalk Shopping Mall. Hotel Neo Plus Kuta Legian is located only 15 minutes from Ngurah Rai International Airport, Hotel Neo Plus Kuta Legian offers 117 guest rooms on 6 floors with the best service from Hotel Neo Plus Kuta.For your business needs, NEO + Kuta Legian is equipped with 1 stylish meeting room that can accommodate up to 84 guests in a theater style conference with ample parking space. The meeting rooms are air-conditioned and equipped with a sound system, whiteboard, projector and LCD screen, plus high-speed Wi-fi internet access.",
    facilities: ['Meeting Room', 'Noodles Now', 'SPA', 'Swimming Pool'],
    image: 'assets/images/hotel_neo_plus.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-neo-plus-kuta.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neoplus-kuta-standard-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neoplus-kuta-legian-superior-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neoplus-kuta-legian-deluxe-roo0m.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neo-plus-kuta-legian-suite-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neo-plus-kuta-noodle-now.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neo-plus-kuta-care-spa.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/neo-plus-kuta-meeting-room.jpg',
    ],
    price: 390000,
    rating: 4.3,
    location: "Legian, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Hotel+NEO%2B+Kuta+Legian/@-8.717536,115.175631,13z/data=!4m8!3m7!1s0x0:0x59b1dfaedf2b0a2f!5m2!4m1!1i2!8m2!3d-8.7175356!4d115.1756307?hl=en-US",
    address:
        "Jl. Legian Gg. Troppozone No.8, Legian, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 1,
    isPopular: 1,
    isReservation: 1,
  ),
  ProductModel(
    id: 22,
    categoryId: 3,
    name: "Ramada Encore",
    description:
        "Ramada Encore Seminyak Bali is a 4 star hotel, built on approximately 10,000 sqm of land with 2,200 sqm of lagoon pool, located in the trendy Seminyak area, a popular area for all travelers who have charm and a busy lifestyle. Located in a peaceful location but still very close to modern entertainment venues. It only takes you 5 minutes to reach Seminyak Square, the main center for the best exotic attractions in Bali. Our free shuttle service can take you to several popular destinations around the Kuta-Seminyak area. Ramada Encore Bali Seminyak is the ideal choice for both leisure and business.",
    facilities: [
      'The Lagoon Pool',
      'Mahadewi Restaurant',
      'The Lagoon Bar',
      'Mahadvi Spa',
      'The Peak Wine Cellar',
      'Arjuna Meeting Room',
      'Gym'
    ],
    image: 'assets/images/hotel_ramada_encore.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/rama-encore-superior.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-deluxe-pool-view.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-executive-deluxe.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-deluxe-pool-access.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-family-pool-view.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-family-pool-accesss.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-seminyak-resto.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-the-lagoon-bar.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/ramada-encore-spa.jpg',
    ],
    price: 450000,
    rating: 4.3,
    location: "Seminyak, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Ramada+Encore+by+Wyndham+Seminyak+Bali/@-8.6854865,115.1739621,17z/data=!3m1!4b1!4m8!3m7!1s0x2dd225d30df5efb1:0xa68eb71c1a7af0d7!5m2!4m1!1i2!8m2!3d-8.6854918!4d115.1761508?hl=en-US",
    address:
        "Jl. Dewi Saraswati III, Seminyak, Kec. Kuta, Kota Denpasar, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 23,
    categoryId: 3,
    name: "Harris Hotel Seminyak",
    description:
        "Harris Seminyak Bali Hotel is very strategically located within a 5-minute drive from one of the beaches, namely Dhyana Pura. It has a bright decor that offers a comfortable stay with complete facilities such as an outdoor swimming pool and Wi-Fi access at every corner. are hotels. The rooms are brightly decorated in a contemporary and modern style. Each room is equipped with a flat screen television, a safe and air conditioning, a small bar, an electric kettle, a private bathroom equipped with a hairdryer shower, and free toiletries. You can also enjoy the swimming pool while relaxing enjoying the massage and spa services and the wellness center or working out in the gym. Hotel Harris Seminyak also offers a variety of delicious Indonesian, western dishes while for those of you who want to enjoy Italian-style dishes you can try at Harrissimo while enjoying a fresh drink. Hotel Harris Seminyak's receptionist works 24 hours a day who will provide friendly services that can assist you at any time such as airport shuttle facilities at an additional cost. Facilities on offer include a concierge, meeting rooms and a business center. There is also a play area for your children.",
    facilities: [
      'Dining',
      'Harris Cafe',
      'Juice Bar',
      'Harrisimo Pizza & Pasta',
      'Fun & Leisure',
      'Swimming Pool',
      'Gym',
      'SPA',
      'Botique'
    ],
    image: 'assets/images/hotel_harris_seminyak.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-harris-seminyak-pool.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/harris-seminyak-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/harris-seminyak-unique-room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-harris-seminyak-dining.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/cafe-harris-seminyak.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/harris-seminyak-juice-bar.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/Harris-Seminyak-Meeting-Room.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-harris-seminyak-leisure.jpg',
    ],
    price: 450000,
    rating: 4.3,
    location: "Seminyak, Bali",
    urlLocation:
        "https://www.google.com/maps/place/HARRIS+Hotel+Seminyak+-+Bali/@-8.6895168,115.1593244,17z/data=!3m1!4b1!4m8!3m7!1s0x2dd2471f48d23ac9:0x309a8be16695e17b!5m2!4m1!1i2!8m2!3d-8.6895168!4d115.1638091",
    address:
        "Jl. Drupadi No.99, Seminyak, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 1,
    isReservation: 1,
  ),
  ProductModel(
    id: 24,
    categoryId: 3,
    name: "Bedrock Hotel",
    description:
        "Hotel Bedrock Kuta presents a hotel with a contemporary Balinese style with a luxurious atmosphere ranging from furnishings and design. By providing comfort to every guest who stays. Hotel Bedrock Kuta is a 15-minute walk from famous tourist attractions such as Waterbom, a 5-minute drive from Ngurah Rai International Airport. If you want to visit the beach and also the nearest mall like Lippo Mall Kuta you can reach it only takes 5 minutes.",
    facilities: [
      'Superior',
      'Deluxe',
      'Grand Deluxe',
      'Junior Suite',
      'Luxury Suite',
      'Family Suite'
    ],
    image: 'assets/images/hotel_bedrock.jpg',
    imagesPreview: [
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/hotel-bedrock-kuta-bali.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/bedrock-hotel-kuta-bali-superior.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/bedrock-hotel-deluxe.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/grand-deluxe-bedrock.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/bedrock-kuta-grand-deluxe.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/bedrock-hotel-luxury-suite.jpg',
      'https://www.baligetaway.co.id/wp-content/uploads/2014/10/room-family-suite.jpg',
    ],
    price: 375000,
    rating: 4.3,
    location: "Kuta, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Bedrock+Hotel+Kuta+bali/@-8.737352,115.166515,13z/data=!4m8!3m7!1s0x0:0x81e57804f978a66d!5m2!4m1!1i2!8m2!3d-8.7373799!4d115.1665076?hl=en-US",
    address:
        "Jl. Wana Segara No.21, Kuta, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 25,
    categoryId: 4,
    name: "Prime Plus Medical",
    description:
        "Prime Plus Medical is a stand-alone medical facility dedicated to providing excellent medical services for locals, expatriates and tourists in the heart of the coastal area of Canggu, Bali. Our 24-hour walk-in facility accommodates to the high demand for the wide range of medical services that can be provided by urgent care centers.",
    facilities: [
      "24/7 On-Call",
      "IV Vitamin Theraphy",
      "Dental Clinic",
      "Medical Laboratory",
      "Vaccination",
      "Emergency Treatment"
    ],
    image: "assets/images/prime_medical.png",
    imagesPreview: [
      "https://www.primeplusmed.com/wp-content/uploads/2019/03/prime-plus-3-14.jpg",
      "https://www.primeplusmed.com/wp-content/uploads/2018/11/prime-plus-medical-smile.jpg",
      "https://www.primeplusmed.com/wp-content/uploads/2019/03/prime-plus-3-12.jpg",
      "https://www.primeplusmed.com/wp-content/uploads/2019/03/prime-plus-3-3-copy.jpg"
    ],
    price: 0,
    rating: 4.8,
    location: "Canggu, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Prime+Plus+Medical/@-8.6676497,115.1432501,17.66z/data=!4m5!3m4!1s0x2dd24776cfc15f71:0x850f2033ba09bdde!8m2!3d-8.6680402!4d115.1466911?hl=en-US",
    address:
        "Canggu, Jl. Subak Sari No.90A, Tibubeneng, Kuta Utara, Badung Regency, Bali 80361",
    isFavorite: 0,
    isPopular: 1,
    isReservation: 1,
  ),
  ProductModel(
    id: 26,
    categoryId: 4,
    name: "RSUP Sanglah",
    description:
        "Central General Hospital (RSUP) Sanglah Denpasar is a type A hospital belonging to the Ministry of Health located in Bali. As a referral hospital for Bali and Nusa Tenggara, Sanglah Hospital Denpasar always prioritizes quality and patient safety",
    facilities: [
      'Medical Room',
      "Emergency room",
      "Haemodialisa",
      "Radiotherapy"
    ],
    image: "assets/images/rsup_sanglah.jpg",
    imagesPreview: [
      "https://i1.wp.com/sanglahhospitalbali.com/home/wp-content/uploads/2021/08/poliklinik-1.jpg",
      "https://i1.wp.com/sanglahhospitalbali.com/home/wp-content/uploads/2021/08/WING-AMERTA-SIANG-HARI.jpg",
      "https://i2.wp.com/sanglahhospitalbali.com/home/wp-content/uploads/2021/08/triage.jpg",
      "https://i0.wp.com/sanglahhospitalbali.com/home/wp-content/uploads/2021/08/pjt.jpg",
      "https://i1.wp.com/sanglahhospitalbali.com/home/wp-content/uploads/2021/12/LINAC-1.jpg"
    ],
    price: 0,
    rating: 4.0,
    location: "Denpasar, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Rumah+Sakit+Umum+Pusat+Sanglah/@-8.6694169,115.2221051,14z/data=!4m5!3m4!1s0x0:0x842c9d89a4a920dd!8m2!3d-8.6758359!4d115.2127549",
    address:
        "Jl. Diponegoro, Dauh Puri Klod, Kec. Denpasar Bar., Kota Denpasar, Bali 80113",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 27,
    categoryId: 4,
    name: "ZAP Clinic",
    description:
        "Founded in 2009, ZAP always strives to continue to achieve 100% customer satisfaction (internal or external) this will be reflected in our service spirit which will continue to be committed to being a solution for the community. ZAP will periodically continue to innovate, improve quality and ensure punctuality in each service session provided. We show real appreciation for our clients, who are always trying to balance their daily lives. We strive to make sure the ZAP experience feels friendly yet professional. We love innovation and technology, but continue to prioritize safe and high standards of action at every outlet, every time even for the long term.We so value time which is the most precious value in life, that we make sure all our treatments are started and done on time.",
    facilities: ['Body Treatment', 'Beauty Treatment'],
    image: "assets/images/clinic_zap.png",
    imagesPreview: [
      'https://zapclinic.com/assets/media/services/photofacial/pf-step-4.jpg',
      'https://zapclinic.com/assets/media/services/photofacial/pf-step-1.jpg',
    ],
    price: 0,
    rating: 4.5,
    location: "Kuta, Bali",
    urlLocation:
        "https://www.google.com/maps/place/ZAP+Clinic+-+Bali/@-8.7021661,115.1755314,208m/data=!3m2!1e3!4b1!4m5!3m4!1s0x2dd246cf861c8ec1:0xaddbc0dc4aa8e564!8m2!3d-8.7021622!4d115.1760703",
    address:
        "Jl. Dewi Sri No.88, Legian, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 28,
    categoryId: 4,
    name: "Clinic SOS Gatotkaca",
    description:
        "The SOS Gatotkaca Primary Clinic in Denpasar City was founded in 1991 by Prof. Dr. dr. Ketut Sukardika, SpMK as the first clinic in Bali that operates 24 hours with the mission of providing help to others in need",
    facilities: [
      'Intensive Care Unit',
      'Outpatient Installation',
      'Diagnostic Support Installation',
      'Medical Check-up'
    ],
    image: "assets/images/sos_gatotkaca.jpeg",
    imagesPreview: [
      "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2021/05/05/7b2ce5cc-5c19-4818-bec7-7db876c5ac8d-1620195635095-467c6af328588859d8829ca23398f6c0.jpg",
      "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit621414gsm/events/2021/05/05/57e82df2-ab00-45f4-b5d0-397ec2664042-1620195628561-d490ce103487871eba805155b588cf36.jpg"
    ],
    price: 0,
    rating: 4.5,
    location: "Denpasar, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Klinik+SOS+Gatotkaca/@-8.6530069,115.2142398,833m/data=!3m1!1e3!4m5!3m4!1s0x2dd2409efc24467f:0x58fdc75fe8feb1a3!8m2!3d-8.6530069!4d115.2161105",
    address:
        "Jl. Gatotkaca No.21, Dangin Puri Kauh, Kec. Denpasar Utara, Kota Denpasar, Bali 80116",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 29,
    categoryId: 4,
    name: "RS BIMC Nusa Dua",
    description:
        "BIMC Nusa Dua Hospital is one of the hospitals located in the South Kuta area, Badung. This hospital has been established since 2012 under the auspices of Siloam Hospitals Group. Siloam Hospitals has a vision to create a hospital with international services, affordable for the community, and under the love of God. With a mission to be the hospital of choice with world-class healthcare services in health education and research.",
    facilities: [
      'Medical Check-up',
      'Neonate Intensive Care Unit (NICU)',
      'CosMedic Centre',
      'Arthroscopy Centre'
    ],
    image: "assets/images/rs_bimc.jpeg",
    imagesPreview: [
      'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/268571_20-4-2020_18-31-39.jpeg',
      'https://bimcbali.com/wp-content/uploads/2019/02/Rumah-Sakit-Bali-BIMC-Siloam-Hospital-Nusa-Dua-Profile-Poliklinik-Spesialis.jpg',
      'https://bimcbali.com/wp-content/uploads/2019/02/rumah-sakit-bali-bimc-siloam-nusa-dua-klinik-nyeri.jpg'
    ],
    price: 0,
    rating: 4.5,
    location: "Nusa Dua, Bali",
    urlLocation:
        "https://www.google.com/maps/place/BIMC+Hospital+Nusa+Dua/@-8.7993745,115.2262724,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd24325b8592b69:0xde6d432ae4d18887!8m2!3d-8.7993745!4d115.2284611",
    address:
        "Kawasan ITDC Blok D, Jl. Nusa Dua, Benoa, Kec. Kuta Sel., Kabupaten Badung, Bali 80363",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 30,
    categoryId: 4,
    name: "The Medical Bali Canggu",
    description:
        "The Medical Bali is an integrated and trusted company engaged in health services. The Medical Bali is always committed to providing the best in class health services and products in accordance with our motto, \"Serve You Better\". Our medical team has the competence and qualifications as company doctors who have a HIPERKES (Company Hygyene and Occupational Health) certificate.",
    facilities: ['Medical Check-up', 'Home Care', 'Laboratory'],
    image: "assets/images/medical_bali_canggu.jpg",
    imagesPreview: [
      'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/7580401531975/The%2520Medical%2520Bali%2520%2528Canggu%2529-a4f39241-4629-4364-8b17-524efabc57b7.jpeg',
      'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/7580401531975/The%2520Medical%2520Bali%2520%2528Canggu%2529-ba1bff4b-95ba-4781-8baa-4ef6ca25ddf9.jpeg',
      'https://ik.imagekit.io/tvlk/xpe-asset/AyJ40ZAo1DOyPyKLZ9c3RGQHTP2oT4ZXW+QmPVVkFQiXFSv42UaHGzSmaSzQ8DO5QIbWPZuF+VkYVRk6gh-Vg4ECbfuQRQ4pHjWJ5Rmbtkk=/7580401531975/The%2520Medical%2520Bali%2520%2528Canggu%2529-2fbbb03a-b698-4cbd-9cea-916a8959434e.jpeg'
    ],
    price: 0,
    rating: 4.9,
    location: "Canggu, Bali",
    urlLocation:
        "https://www.google.com/maps/place/THE+MEDICAL+CANGGU+BATU+BOLONG+(Doctor,+Tes+Antigen+%26+PCR)/@-8.6456083,115.1388487,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd239c39bdda777:0x6a194531300470b7!8m2!3d-8.6456083!4d115.1410374",
    address:
        "Jl. Pantai Batu Bolong No.13A, Canggu, Kec. Kuta Utara, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 1,
  ),
  ProductModel(
    id: 31,
    categoryId: 4,
    name: "RSD Magusada",
    description:
        "RSD Mangusada, Badung Regency is a clinic with: the name of the Dharma Asih Clinic managed by the Hindu Rsi . Foundation Markandeya. In September 1998 it was then taken over by Badung Regency Government and changed its name to Klinik The birth of ura Dharma Asih was then carried out to expand the area and construction of the hospital building from 1999 to the present. On April 30, 2002, the District Regulation was issued Badung Number 3 of 2002 concerning the Establishment of Organizational Structure and the Work Procedure of the Badung Regency General Hospital. Giving health services to the community, can only be implemented in August 22, 2002 by accepting patients covering the types of services Emergency Unit and some basic polyclinics such as Internal Medicine, Surgery, Pediatrics, Obstetrics & Gynecology and Dental & Oral. On the 4th September 2002 Badung Hospital was officially opened by the Regent A.A. Oka Ratmadi, SH with the types of services provided, namely ER, Nursing Outpatient and Inpatient with a capacity of 25 beds.",
    facilities: [
      'Hemodialysis Unit',
      'Endoscopy',
      'Trauma Center',
      'Cath Lab',
      'Disaster Team',
    ],
    image: "assets/images/rsd_mangusada.jpg",
    imagesPreview: [
      'https://rsudmangusada.badungkab.go.id/uploads/fasilitas/fasilitas_202101110155_PoliklinikReguler.JPG',
      'https://rsudmangusada.badungkab.go.id/assets/CKImages/images/RAWATINAP.jpg',
      'https://rsudmangusada.badungkab.go.id/uploads/fasilitas/fasilitas_202101110156_PoliklinikEksekutif.jpg',
      'https://rsudmangusada.badungkab.go.id/assets/CKImages/images/IMG_4529.JPG',
      'https://rsudmangusada.badungkab.go.id/assets/CKImages/images/IMG_3303.JPG'
    ],
    price: 0,
    rating: 4.9,
    location: "Badung, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Rumah+Sakit+Mangusada+Badung/@-8.5786598,115.1461377,12z/data=!4m5!3m4!1s0x2dd23bfdb9811107:0xa81c5fa8cbb11519!8m2!3d-8.5786598!4d115.1829684",
    address:
        "Jalan Raya Kapal, Mangupura, Mengwi, Kapal, Kec. Mengwi, Kabupaten Badung, Bali 80351",
    isFavorite: 1,
    isPopular: 1,
    isReservation: 1,
  ),
  ProductModel(
    id: 32,
    categoryId: 5,
    name: "Chicken Betutu Men Tempeh",
    description:
        "One of the recommendations for culinary places that serve Balinese specialties that are globally popular is Ayam Betutu Men Tempeh, which has been established since 1978. Located in the vicinity of the old Gilimanuk terminal, this legendary restaurant offers two types of chicken betutu dishes, namely fried and wet-cooked chicken betutu. Both of them will definitely be able to shake your tongue because they are made from young free-range chicken with an authentic Balinese culinary taste. The price of the betutu chicken package in this place is Rp. 60.000.",
    facilities: ['Chicken Betutu', 'Hot Tea', 'Ice Tea', 'Orange Juice'],
    price: 60000,
    image: "assets/images/ayam_betutu.jpeg",
    imagesPreview: [
      'https://b.zmtcdn.com/data/reviews_photos/41c/f137ed98043d58e8b9f8d7d4aa9cb41c_1546413590.jpg',
      'https://b.zmtcdn.com/data/pictures/4/1703494/269de224ec9e321bf2a1ed21f4c31358.png',
      'https://b.zmtcdn.com/data/reviews_photos/a3f/839761d21affca7a2b7dd73f7350da3f_1450958806.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/96c/0fc3da275de9aa92a161df4ce964996c_1546413575.jpg'
    ],
    rating: 4.5,
    location: "Gilimanuk, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Ayam+Betutu+Men+Tempeh+sejak+1978/@-8.1584955,114.4173543,15z/data=!4m5!3m4!1s0x2dd14385c304a40b:0xfbd0199464b60d20!8m2!3d-8.168164!4d114.4361211",
    address:
        "Jl. Rajawali, Gilimanuk, Kec. Melaya, Kabupaten Jembrana, Bali 82252",
    isFavorite: 0,
    isPopular: 1,
    isReservation: 0,
  ),
  ProductModel(
    id: 33,
    categoryId: 5,
    name: "Menega Cafe",
    description:
        "Want to have dinner while enjoying the beautiful sunset by the beach? Make your choice to Menega Café. The reason is, this place offers a comfortable place for your nightly Balinese culinary tour on the Jimbaran beach The menu offered is in the form of seafood cooked while still fresh with special spices that are certainly appetizing. If you want to save more, you can choose the package offered for Rp. 200.000 per person with a complete menu. Want a bigger portion? The two packages from this restaurant are priced at Rp. 750.000.",
    facilities: ['Cold Beverage', 'Hot Beverage', 'Soft Drink', 'Fresh Juice'],
    price: 80000,
    image: "assets/images/mange_cafe.jpg",
    imagesPreview: [
      'https://b.zmtcdn.com/data/reviews_photos/01e/5ae5d6bb58c3cc13e67070293606b01e_1529224255.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/f72/c5bec17ae956d536ee4b69b58453ef72_1422444710.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/136/53a89862dbebc8f838d6bb44c0023136_1530960367.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/01e/5ae5d6bb58c3cc13e67070293606b01e_1529224255.jpg'
    ],
    location: "jimbaran, Bali",
    rating: 4.2,
    urlLocation:
        "https://www.google.com/maps/place/Menega+Cafe/@-8.7806688,115.1621705,17z/data=!4m14!1m8!3m7!1s0x2dd244f3501c9553:0x74c847860f37ca9!2sMenega+Cafe!8m2!3d-8.7807808!4d115.1645358!14m1!1BCgIgAQ!3m4!1s0x2dd244f3501c9553:0x74c847860f37ca9!8m2!3d-8.7807808!4d115.1645358",
    address:
        "Jl. Four Seasons Muaya Beach, Jimbaran, Kec. Kuta Sel., Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  ),
  ProductModel(
    id: 34,
    categoryId: 5,
    name: "Warung Wardani",
    description:
        "This one place to eat has a mainstay menu in the form of Chicken and Beef Mixed Rice which is savory and delicious. In addition to the menu, Warung Wardani also offers a variety of other Indonesian culinary delights such as gado-gado, grilled rice, rawon and so on.Make sure you follow every update on this restaurant's Instagram because there are lots of discounts and other interesting offers that you can take advantage of. You can invite the whole family to enjoy a meal here because the menu offered is not too spicy so children can enjoy it too.",
    facilities: [
      'Chicken and Beef Mixed Rice',
      'Indonesian Culinary',
      'Grilled Rice',
      'Rawon'
    ],
    price: 40000,
    image: "assets/images/warung_wardani.jpg",
    imagesPreview: [
      'https://lh5.googleusercontent.com/p/AF1QipMso1zVJUgbPApDjVDUZlEDRgah33jBo91Xq3dH',
      'https://lh5.googleusercontent.com/p/AF1QipNm7jSRFt00Bz5aVedRynY9BeuB28JpQBLMq5N3',
      'https://lh5.googleusercontent.com/p/AF1QipP4Xvt0NgCzCOJaPED6AK9qezAaghKtIOZ1jjVE',
      'https://lh5.googleusercontent.com/p/AF1QipPipBPYDhVf5L-8cE_69hJNB3vomhGM_tzuM91E'
    ],
    rating: 4.5,
    location: "Denpasar, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Warung+Wardani/@-8.6510946,115.2136952,17z/data=!3m1!4b1!4m12!1m6!3m5!1s0x2dd2409e358fde2f:0xea7f870663495047!2sWarung+Wardani!8m2!3d-8.6510946!4d115.2158839!3m4!1s0x2dd2409e358fde2f:0xea7f870663495047!8m2!3d-8.6510946!4d115.2158839",
    address:
        "Jl. Yudistira No.2, Dangin Puri Kauh, Kec. Denpasar Utara, Kota Denpasar, Bali 80232",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  ),
  ProductModel(
    id: 35,
    categoryId: 5,
    name: "Nasi Pecel Bu Tinuk",
    description:
        "The mainstay menu of this restaurant which has a halal certificate from MUI is the famous delicious pecel rice finished with thick and savory peanut sauce. In addition, there are also other delicious menus, including oxtail soup, rawon and fried duck. You can enjoy pecel rice with a variety of delicious side dishes such as fried lungs, empal, tempe bacem, fried chicken and others. This place is always crowded with shoppers, especially at meal times, so you should look for the best time when you want to visit this place.",
    facilities: ['Oxtail Soup', 'Rawon', 'Fried Duck'],
    price: 25000,
    image: "assets/images/pecel_bu_tinuk.jpg",
    imagesPreview: [
      'https://b.zmtcdn.com/data/reviews_photos/7c2/35e21437d0497f2c78e5e1ef8bf2b7c2_1530963560.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/369/61a7e9936bf538c7bca3967ddd3f8369_1440922003.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/b1c/15dede487f9eab4efdf243c5ce20eb1c_1480047021.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/6c5/07c721f8ed4a894bf884f9cf84e0c6c5_1440922005.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/a28/0cb9ef742a50084cf593f8c3916e6a28_1546133502.jpg'
    ],
    rating: 4.2,
    location: 'Kuta, Bali',
    urlLocation:
        "https://www.google.com/maps/place/Nasi+Pecel+Bu+Tinuk/@-8.7332143,115.1755585,17z/data=!3m1!4b1!4m14!1m8!3m7!1s0x2dd24404ecad42a5:0x436f48b9fb500583!2sNasi+Pecel+Bu+Tinuk!8m2!3d-8.7332509!4d115.1777482!14m1!1BCgIYIQ!3m4!1s0x2dd24404ecad42a5:0x436f48b9fb500583!8m2!3d-8.7332509!4d115.1777482",
    address: "Jalan Raya, Kuta, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  ),
  ProductModel(
    id: 36,
    categoryId: 5,
    name: "Bebek Bengil Nusa Dua",
    description:
        "The culinary recommendation of Bali Nusa Dua, which is famous for its Bebek Bengil mainstay or who is more popular with the name Dirty Duck Dinner, because the word bengil itself means dirty. The mainstay menu is the savory and delicious fried duck served with 3 special kinds of chili sauce, namely fried chili sauce, matah, red chili sauce and lawar. The estimated price for eating at this restaurant is around Rp 100.000 per head.",
    facilities: [
      'Rice Paper Rolls',
      'Duck Spring Roll',
      'Grilled Thai Chicken Wings'
    ],
    price: 100000,
    image: "assets/images/bebek_bengil.jpg",
    imagesPreview: [
      'https://b.zmtcdn.com/data/reviews_photos/fda/b163e9a78df1e5e5c46ed09b58bc2fda_1485492401.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/af1/336bad8debdd7361c5b299ed340abaf1_1548114276.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/3c2/6689213147fc274b1311cb7fd77123c2_1471628948.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/46c/f7635de2630810f496fd08a0a0e6e46c_1455696315.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/2da/f160c35f0c4eea24f0239fae7e16f2da_1517116848.jpg',
      'https://b.zmtcdn.com/data/reviews_photos/965/2f35b855e3c5dc61be19340fe64f9965_1464220248.jpg'
    ],
    rating: 4.3,
    location: 'Nusa Dua, Bali',
    urlLocation:
        "https://www.google.com/maps/place/Bebek+Bengil/@-8.801565,115.2311087,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd2432818279391:0x37ba48b3cbb94b35!8m2!3d-8.801565!4d115.2355934",
    address:
        "ITDC Complex, Nusa Dua Beach, Benoa, Kec. Kuta Sel., Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  ),
  ProductModel(
    id: 37,
    categoryId: 5,
    name: "Made's Warung Seminyak",
    description:
        "Made’s Warung was established in 1969 and has become a social eating and meeting venue for locals, expats and tourists alike. It has grown from a traditional roadside warung into a cosmopolitan restaurant serving a variety of local and international food in Bali.",
    facilities: [
      'Appetizer',
      'Sandwich',
      'Drink',
      'Salad',
      'Balinese Food',
      'Indonesian Food'
    ],
    image: "assets/images/made_bali_seminyak.jpg",
    imagesPreview: [
      'https://madeswarung.com/wp-content/uploads/2022/03/Crowded-salsa-at-friday-night-scaled.jpg',
      'https://madeswarung.com/wp-content/uploads/2022/02/Salsa-Edit-3-scaled.jpg',
      'https://madeswarung.com/wp-content/uploads/2022/03/IMG_7306.jpg',
      'https://madeswarung.com/wp-content/uploads/2022/03/IMG_5838.jpg'
    ],
    price: 100000,
    rating: 4.3,
    location: "Seminyak, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Made's+Warung/@-8.6894097,115.1655635,17z/data=!3m1!4b1!4m14!1m8!3m7!1s0x2dd247219ae78919:0xdfdeb1e4339ec6b1!2sMade's+Warung!8m2!3d-8.6894157!4d115.1677114!14m1!1BCgIYIQ!3m4!1s0x2dd247219ae78919:0xdfdeb1e4339ec6b1!8m2!3d-8.6894157!4d115.1677114?hl=en-US",
    address:
        "Jl. Raya Seminyak, Seminyak, Kuta, Jl. Raya Seminyak No.7, Seminyak, Kec. Kuta, Kabupaten Badung, Bali 80361",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  ),
  ProductModel(
    id: 38,
    categoryId: 5,
    name: "Bebek Tepi Sawah",
    description:
        "Enjoy a wide selection of cuisines, ranging from contemporary western cuisine and innovative Indonesian or Balinese specialties in a fresh setting in a true Balinese Village environment. Sharing joy and satisfaction with others, enjoying the wonderful experience of eating in the corner of the rice fields, while looking at the rice fields and the pounding of coconut leaves, and listening to various small birds chirping.",
    facilities: [
      'Grilled Mixed Seafood',
      'Shrimp Avocado Salad',
      'Chicken Sweet Corn Soup',
      'Tropical Vegetarian'
    ],
    price: 100000,
    image: "assets/images/bebek_tepi_sawah.jpg",
    imagesPreview: [
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah10.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah1.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah7.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah11.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah15.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah13.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah19.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah3.jpg',
      'http://www.bebektepisawahrestaurant.com/gallery/bebektepisawah5.jpg'
    ],
    rating: 4.6,
    location: "Ubud, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Bebek+Tepi+Sawah+Restaurant+Ubud/@-8.523635,115.272846,13z/data=!4m5!3m4!1s0x0:0x4bb1b97df4b56821!8m2!3d-8.5236352!4d115.2728463?hl=en-US",
    address:
        "Jalan raya goa gajah, banjar teges, Peliatan, Kecamatan Ubud, Kabupaten Gianyar, Bali 80571",
    isFavorite: 1,
    isPopular: 1,
    isReservation: 0,
  ),
  ProductModel(
    id: 39,
    categoryId: 5,
    name: "Genius Cafe Sanur",
    description:
        "Genius Drinks are designed using fresh ingredients, superfoods and essential oils, mixed with herbal tonics and house-infused alcohols. With Genius Drinks, we stay wholesome and prove that it is possible to have a good social life and cultivate health at the same time. We are reinventing bar culture by making a positive change and impact on the way we drink. We are proud to use only locally-grown herbs - our natural healers on this planet. Incredible Indonesian herbs have many different properties and, when infused into alcohol, they create something new and almost magical… It is a process that brings a whole new approach to what we drink, the way we drink and why we drink.",
    facilities: [
      'Chicken Burger',
      'Falafel Wrap',
      'Happiness Bowl',
      'Tropical Fruit Platter',
      'Etc'
    ],
    image: "assets/images/genius_cafe.jpg",
    imagesPreview: [
      'https://geniuscafebali.com/wp-content/uploads/2019/06/genius_tacos-1.jpg',
      'https://geniuscafebali.com/wp-content/uploads/2019/06/falafel_roll-1.jpg',
      'https://geniuscafebali.com/wp-content/uploads/2019/06/smoothies-1.jpg',
      'https://geniuscafebali.com/wp-content/uploads/2019/06/smoothie_bowls-1.jpg',
      'https://geniuscafebali.com/wp-content/uploads/2019/06/hands_with_pizza-1.jpg'
    ],
    price: 100000,
    rating: 4.5,
    location: "Sanur, Bali",
    urlLocation:
        "https://www.google.com/maps/place/Genius+Cafe+Sanur/@-8.7114749,115.2516104,17z/data=!3m1!4b1!4m12!1m6!3m5!1s0x2dd241969c6cccaf:0x32ae374cc34b1dc6!2sGenius+Cafe+Sanur!8m2!3d-8.71147!4d115.2537978!3m4!1s0x2dd241969c6cccaf:0x32ae374cc34b1dc6!8m2!3d-8.71147!4d115.2537978?hl=en-US",
    address:
        "Jl. Kusuma Sari, Sanur Kauh, Denpasar Selatan, Kota Denpasar, Bali 80228",
    isFavorite: 0,
    isPopular: 1,
    isReservation: 0,
  ),
  ProductModel(
    id: 40,
    categoryId: 5,
    name: "Warung Liku Nasi Bali",
    description:
        "If you want to enjoy chicken betutu rice that tastes different from most betutu chickens, try coming to Warung Liku. The shop is located on Jl. Gandapura III has a menu of betutu chicken rice that has a distinctive taste. Hmm..what's the difference between Warung Liku's Nasi Ayam betutu and the others? While most betutu chickens are cooked by boiling and then grilling, at Warung Liku the boiler chicken is roasted for about 30 minutes. After that, just boil it with base genep for 3 hours until it is soft and the spices are absorbed.",
    facilities: ['Balinese Food', 'Chicken Betutu', 'Etc'],
    price: 50000,
    image: "assets/images/warung_liku.jpg",
    imagesPreview: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0e/09/fc/41/nasi-campur-bali-porsi.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/03/a6/ba/1f/standard-yet-it-s-so.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/05/6a/30/e6/warung-liku.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/19/d4/50/2e/photo0jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0f/b4/34/44/photo0jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/0c/59/fc/ef/photo0jpg.jpg',
    ],
    rating: 4.6,
    location: 'Denpasar, Bali',
    urlLocation:
        "https://www.google.com/maps/place/Warung+Liku+Nasi+Bali+-+Ayam+Betutu/@-8.674808,115.23015,13z/data=!4m5!3m4!1s0x0:0xd23b84731fcd109f!8m2!3d-8.6748053!4d115.2300641?hl=en-US",
    address:
        "Jl. Tukad Musi No.19 A, Panjer, Denpasar Selatan, Kota Denpasar, Bali 80239",
    isFavorite: 0,
    isPopular: 0,
    isReservation: 0,
  )
];
