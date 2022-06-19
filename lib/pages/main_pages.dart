part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // This is the main page that will be displayed when the app is opened

  // This is the first page that will be displayed when the app is opened
  int _selectedIndex = 0;

  void _changeSelectedIndex(int i) {
    // This method is used to change the selected index of the bottom navigation bar
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: [
        const HomePage(),
        const FavouritePage(),
        const ProfilePage(),
      ].elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
              activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              activeIcon: Icon(Icons.person)),
        ],
        currentIndex: _selectedIndex,
        onTap: _changeSelectedIndex,
        selectedItemColor: const Color(0xff135DB3),
      ),
    );
  }
}
