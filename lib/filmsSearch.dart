import 'package:flutter/material.dart';
import 'package:kino_film/infoFilms.dart';

class FilmsSearch extends StatefulWidget {
  const FilmsSearch({super.key});

  @override
  State<FilmsSearch> createState() => _FilmsSearchState();
}

class _FilmsSearchState extends State<FilmsSearch> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Home sahifasiga o'tish
              },
              icon: Icon(Icons.home),
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Explore sahifasiga o'tish
              },
              icon: Icon(
                Icons.explore,
                color: Colors.deepPurple,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return AvatarFilmsInfo();
                    },
                  ),
                );
              },
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13454/13454818.png',
                color: Colors.grey,
                width: 25,
              ),
            ),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Download sahifasiga o'tish
              },
              icon: Icon(
                Icons.cloud_download_outlined,
                color: Colors.grey,
              ),
            ),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                // Profile sahifasiga o'tish
              },
              icon: Icon(
                Icons.perm_identity_outlined,
                color: Colors.grey,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 290,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[900],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Search',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[100])),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 61, 10, 10),
                    ),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/11803/11803747.png',
                      color: Colors.deepPurpleAccent,
                      width: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/kino1.jpg', width: 170, height: 220),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/kino2.jpg', width: 170, height: 220),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/kino3.jpg', width: 170, height: 220),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/kino4.jpg', width: 170, height: 220),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/kino5.jpg', width: 170, height: 220),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset('assets/kino6.jpg', width: 170, height: 220),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
