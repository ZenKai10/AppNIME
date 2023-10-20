import 'package:flutter/material.dart';
import 'package:appnime/main.dart';
import 'package:appnime/models/anime.dart';
import 'package:appnime/screens/anime_screen.dart';
import 'package:appnime/services/anime_service.dart';
import 'package:appnime/pages/category.dart';
import 'dart:async';

class AnimeScreen extends StatefulWidget {
  @override
  _AnimeScreen createState() => _AnimeScreen();
}

class _AnimeScreen extends State<AnimeScreen> {
  final List<String> allimages = [
    'assets/attack.png',
    'assets/one.png',
    'assets/man.png',
    'assets/hunter.png',
    'assets/tokyo.png',
    'assets/blue.png',
    'assets/juju.png',
    'assets/naruto.png',
    'assets/haykiu.png',
    'assets/bleach.png',
    'assets/boy.png',
    'assets/death.png',
    'assets/akame.png',
    'assets/dragon.png',
    'assets/demon.png',
    'assets/hero.png',
    'assets/spy.png',
  ];
  final List<String> textt = [
    'Hunter X Hunter',
    'Jujutsu Kaisen',
    'One Man Punch',
    'One Piece',
    'Attack on Titan',
    'Bleach',
    'Demon Slayer',
    'Dragon Ball',
    'Naruto Shipuden',
    'Tokyo Ghoul',
    'My Hero Academia',
  ];
  final List<String> imageListt = [
    'assets/gon.png',
    'assets/gojoo.png',
    'assets/saitama.png',
    'assets/luffy.png',
    'assets/ere.png',
    'assets/ichigo.png',
    'assets/tanjiro.png',
    'assets/goku.png',
    'assets/uzunaruto.png',
    'assets/kaneki.png',
    'assets/medo.png',
  ];
  List<String> selectedGenres = [];
  final ProductService productService = ProductService();
  final TextEditingController _searchController = TextEditingController();
  bool _isSearchFocused = false;
  late Timer _timer;
  int currentIndex = 0;
  @override
  @override
  void dispose() {
    _searchController.dispose();
    _timer.cancel(); // cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // start the timer when the widget is initialized
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % allimages.length;
      });
    });
  }

  int _selectedIndex = 0;
  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.white),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category, color: Colors.yellow),
      label: 'Categories',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite, color: Colors.red),
      label: 'Favorites',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Categorypage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isSearchFocused) {
          setState(() {
            _isSearchFocused = false;
          });
          _searchController.clear();
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 0, 0, 0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Color.fromARGB(255, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/luffy.png'),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'AppNime',
                        style: TextStyle(
                          color: Color.fromARGB(255, 225, 255, 0),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'times new roman',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 54, 4, 119),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          leading: Icon(Icons.home, color: Colors.white),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 54, 4, 119),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          leading: Icon(Icons.category, color: Colors.white),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categorypage()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Selamat Datang di AppNime',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: _isSearchFocused ? 350 : 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Cari anime',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 75, 75, 75),
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      cursorHeight: 20,
                      cursorWidth: 2,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.search,
                      maxLines: 1,
                      textAlignVertical: TextAlignVertical.center,
                      onChanged: (value) {
                        setState(
                            () {}); // Trigger rebuild to update the filtered list
                      },
                      onSubmitted: (value) {
                        // Perform search
                      },
                    )),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {
                        setState(() {
                          _isSearchFocused = !_isSearchFocused;
                          if (!_isSearchFocused) {
                            _searchController.clear();
                            FocusScope.of(context).unfocus();
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paling Populer',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      height: 220,
                      width: 380,
                      child: FutureBuilder<List<Anime>>(
                        future: productService.getAnime(),
                        builder: (BuildContext context,
                            AsyncSnapshot<List<Anime>> snapshot) {
                          if (snapshot.hasData) {
                            List<Anime> products = snapshot.data!;
                            if (_searchController.text.isNotEmpty) {
                              products = products
                                  .where((product) => product.title
                                      .toLowerCase()
                                      .contains(
                                          _searchController.text.toLowerCase()))
                                  .toList();
                              if (products.isEmpty) {
                                return Center(
                                  child: Text(
                                    'Tidak ada anime yang ditemukan',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                );
                              }
                            }
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: products.length,
                              itemBuilder: (BuildContext context, int index) {
                                Anime product = products[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(
                                                product: product),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    width: 160,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            child: Image.asset(
                                              product.image,
                                              fit: BoxFit.cover,
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          product.title,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }
                          // By default, show a loading spinner.
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircularProgressIndicator(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'Loading...',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 27, 27, 27)),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Direkomendasikan Untukmu',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(158, 158, 158, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Wrap(
                                spacing: 10,
                                children: [
                                  FilterButton(
                                    label: 'All',
                                    isSelected: selectedGenres.isEmpty,
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                      });
                                    },
                                  ),
                                  FilterButton(
                                    label: 'Action',
                                    isSelected:
                                        selectedGenres.contains('Action'),
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                        selectedGenres.add('Action');
                                      });
                                    },
                                  ),
                                  FilterButton(
                                    label: 'Drama',
                                    isSelected:
                                        selectedGenres.contains('Drama'),
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                        selectedGenres.add('Drama');
                                      });
                                    },
                                  ),
                                  FilterButton(
                                    label: 'Comedy',
                                    isSelected:
                                        selectedGenres.contains('Comedy'),
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                        selectedGenres.add('Comedy');
                                      });
                                    },
                                  ),
                                  FilterButton(
                                    label: 'Sports',
                                    isSelected:
                                        selectedGenres.contains('Sports'),
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                        selectedGenres.add('Sports');
                                      });
                                    },
                                  ),
                                  FilterButton(
                                    label: 'Romance',
                                    isSelected:
                                        selectedGenres.contains('Romance'),
                                    onPressed: () {
                                      setState(() {
                                        selectedGenres.clear();
                                        selectedGenres.add('Romance');
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 220,
                            width: 380,
                            child: FutureBuilder<List<Anime>>(
                              future: productService.getAnime(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<List<Anime>> snapshot) {
                                if (snapshot.hasData) {
                                  List<Anime> products = snapshot.data!;
                                  if (selectedGenres.isNotEmpty) {
                                    products = products
                                        .where((product) => selectedGenres
                                            .contains(product.genre))
                                        .toList();
                                  }

                                  if (products.isEmpty) {
                                    return Center(
                                      child: Text(
                                        'Tidak ada anime yang ditemukan untuk genre tertentu',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    );
                                  }

                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: products.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      Anime product = products[index];
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetailScreen(
                                                      product: product),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(8),
                                          width: 160,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  child: Image.asset(
                                                    product.image,
                                                    fit: BoxFit.cover,
                                                    height: 150,
                                                    width: 150,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                product.title,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 251, 255, 0),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                } else if (snapshot.hasError) {
                                  return Text("${snapshot.error}");
                                } else {
                                  // By default, show a loading spinner.
                                  return Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 10.0),
                                        Text(
                                          'Loading...',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 54, 4, 119),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: _bottomNavBarItems,
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onPressed;

  const FilterButton({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        isSelected ? Color.fromARGB(255, 0, 0, 0) : Colors.white;
    final textColor =
        isSelected ? Color.fromARGB(255, 255, 255, 255) : Colors.black;
    final borderColor = isSelected
        ? Color.fromARGB(255, 255, 255, 255)
        : Color.fromARGB(255, 255, 255, 255);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
