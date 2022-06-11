class ProductModel {
  final int? id;
  final int? categoryId;
  final String? name;
  final String? description;
  final List? facilities;
  final String? image;
  final List? imagesPreview;
  final int? price;
  final double? rating;
  final String? location;
  final String? urlLocation;
  final int? isReservation;
  final int? isFavorite;

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
    this.isReservation,
    this.isFavorite,
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
      location: "Kintamani, Bangli - Bali",
      urlLocation:
          "https://www.google.com/maps/place/Gn.+Batur/@-8.2401297,115.3687396,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd1f403c8e8ee3f:0xd38045afa18670b4!8m2!3d-8.2401299!4d115.3774944",
      isReservation: 0,
      isFavorite: 1),
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
    isReservation: 0,
    isFavorite: 0,
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
    isReservation: 0,
    isFavorite: 0,
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
    isReservation: 0,
    isFavorite: 0,
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
      'Parking Lot'
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
    isReservation: 0,
    isFavorite: 1,
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
    isReservation: 0,
    isFavorite: 0,
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
    isReservation: 0,
    isFavorite: 0,
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
        "https://www.google.com/maps/search/Pantai+Serenity+bali/@-8.4996574,114.7812353,10z/data=!3m1!4b1",
    isReservation: 0,
    isFavorite: 0,
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
        "https://www.google.com/maps/search/Pantai+Pasut+Jalan+Raya+Pasut+Tibubiu+Kec.+Kerambitan,+Kabupaten+Tabanan,+Bali/@-8.563438,115.036742,13z?hl=en-US",
    isReservation: 0,
    isFavorite: 0,
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
    isFavorite: 1,
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
    isReservation: 0,
    isFavorite: 0,
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
    isReservation: 0,
    isFavorite: 1,
  ),
  ProductModel(
    id: 13,
    categoryId: 2,
    name: "Suwehan Beach",
    description:
        "Suwehan Beach in Tanglad Nusa Penida offers a unique attraction where this beach has special characteristics and not all beaches in Bali are made into triangular beach icons like the famous brand Volcom, among local residents Suwehan Beach resembles the object of Pipi Island Thailand. Suwehan Beach is a beautiful white sandy beach and is still beautiful, the sea water is blue with waves that are not too big and surrounded by high coral cliffs.",
    facilities: [],
    image: "assets/images/pantai_suwehan.jpg",
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
    isReservation: 0,
    isFavorite: 0,
  ),
];
