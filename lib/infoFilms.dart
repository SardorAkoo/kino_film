import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvatarFilmsInfo extends StatefulWidget {
  const AvatarFilmsInfo({super.key});

  @override
  State<AvatarFilmsInfo> createState() => _AvatarFilmsInfoState();
}

int count = 1;

class _AvatarFilmsInfoState extends State<AvatarFilmsInfo> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/avatarsFilmsLogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Avatar: The Way of',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Water',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/128/13454/13454818.png',
                            color: Colors.grey,
                            width: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.network(
                            'https://cdn-icons-png.flaticon.com/128/1946/1946547.png',
                            color: Colors.grey,
                            width: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star_half_sharp,
                        size: 35,
                        color: Colors.purple[600],
                      ),
                      Text(
                        '9.8',
                        style:
                            TextStyle(color: Colors.purple[600], fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        opticalSize: 35,
                        color: Colors.purple[600],
                      ),
                      Text(
                        '2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 142, 36, 170),
                          ),
                        ),
                        child: Text(
                          '13+',
                          style: TextStyle(
                              color: Colors.purple[600], fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 142, 36, 170),
                          ),
                        ),
                        child: Text(
                          'United States',
                          style: TextStyle(
                              color: Colors.purple[600], fontSize: 15),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 142, 36, 170),
                          ),
                        ),
                        child: Text(
                          'Subtitle',
                          style: TextStyle(
                              color: Colors.purple[600], fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 170,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.purple[600],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              'Play',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 170,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 142, 36, 170))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ),
                            Text(
                              'Download',
                              style: TextStyle(
                                  color: Colors.purple[600], fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      children: [
                        const TextSpan(
                          text:
                              "Genre: Action, Superhero, Science Fiction, Romance, Thriller,... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...",
                        ),
                        TextSpan(
                          text: 'View More',
                          style: TextStyle(color: Colors.purple[600]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/folower1.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'James',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Cameron',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Director',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/folower2.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Som',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Worthington',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Cost',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/folower3.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ilon Mask',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Tesla',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Director',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/folower4.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Saldan',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Text(
                              'Const',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            count = 1;
                          });
                        },
                        icon: Text(
                          'Trailars',
                          style: TextStyle(
                            color: count == 1 ? Colors.purple : Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            count = 2;
                          });
                        },
                        child: Text(
                          'More Like This',
                          style: TextStyle(
                            color: count == 2 ? Colors.purple : Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(
                            () {
                              count = 3;
                            },
                          );
                        },
                        icon: Text(
                          'Comments',
                          style: TextStyle(
                            color: count == 3 ? Colors.purple : Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (screenWidth) / 3,
                        height: count == 1 ? 3 : 2,
                        decoration: BoxDecoration(
                          color: count == 1 ? Colors.purple : Colors.grey,
                        ),
                      ),
                      Container(
                        width: (screenWidth) / 3,
                        height: count == 2 ? 3 : 2,
                        decoration: BoxDecoration(
                          color: count == 2 ? Colors.purple : Colors.grey,
                        ),
                      ),
                      Container(
                        width: (screenWidth) / 3,
                        height: count == 3 ? 3 : 2,
                        decoration: BoxDecoration(
                          color: count == 3 ? Colors.purple : Colors.grey,
                        ),
                      )
                    ],
                  ),
                  if (count == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/avatar3.png',
                                width: 180,
                                height: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Trailer 3: Final',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '1m 45s',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[200]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 44, 10, 54),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Update',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple[600]),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/avatar2.png',
                                width: 180,
                                height: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Trailer 2',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '1m 55s',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[200]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 44, 10, 54),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      'Update',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple[600]),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  else if (count == 2)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/MoreKino1.png',
                          width: screenWidth / 2 - 10,
                          height: 300,
                        ),
                        Image.asset(
                          'assets/MoreKino2.png',
                          width: screenWidth / 2 - 10,
                          height: 290,
                        )
                      ],
                    )
                  else if (count == 3)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '24.6k Comments',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/folower5.png',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Kristin Watsan',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Icon(Icons.sms_rounded, color: Colors.grey)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            children: [
                              TextSpan(
                                  text:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/9484/9484251.png',
                                  color: Colors.yellow[600],
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '938',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '3 days ago',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
