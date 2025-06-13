import 'package:dataflows/mall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  static const darkGreen = Color(0xFF254B3A);
  static const darkerGreen = Color(0xFF002b1d);
  static const secondaryColor = Color(0xFFf4f4f4);

  final List<String> imagePaths = [
    'assets/images/button_icon1.png',
    'assets/images/button_icon2.png',
    'assets/images/button_icon3.png',
    'assets/images/button_icon4.png',
    'assets/images/button_icon5.png',
  ];

  final List<Map<String, String>> items = [
    {
      "title": "Lorem Ipsum",
      "desc": "Lorem ipsum dolor sit amet constectur adipiscing elit",
    },
    {
      "title": "Lorem Ipsum",
      "desc":
          "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem ipsum dolor sit amet",
    },
    {
      "title": "Lorem Ipsum",
      "desc":
          "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem ipsum dolor sit amet",
    },
    {
      "title": "Lorem Ipsum",
      "desc": "Lorem ipsum dolor sit amet constectur adipiscing elit",
    },
    {
      "title": "Lorem Ipsum",
      "desc": "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem",
    },
    {
      "title": "Lorem Ipsum",
      "desc":
          "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem ipsum dolor sit amet",
    },
    {
      "title": "Lorem Ipsum",
      "desc":
          "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem ipsum dolor sit amet",
    },
    {
      "title": "Lorem Ipsum",
      "desc": "Lorem ipsum dolor sit amet constectur adipiscing elit. Lorem",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('LOGO'),
        centerTitle: true,
        backgroundColor: darkGreen,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // header section
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                color: darkGreen,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 0.5,
                            endIndent: 8,
                          ),
                        ),
                        Text(
                          'NEXT APPOINTMENT',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 0.5,
                            indent: 8,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icon_calendar.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '14 Oct 2020',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icon_clock.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '12:30 PM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Image.asset(
                                'assets/images/icon_location.png',
                                height: 15,
                                width: 15,
                              ),
                              SizedBox(width: 2),
                              Text(
                                '123 Plant Street, 1/1 ...',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/icon_arrow.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('CREDIT', style: TextStyle(fontSize: 12)),
                              Text(
                                'RM100.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                          Column(
                            children: [
                              Text('POINTS', style: TextStyle(fontSize: 12)),
                              Text(
                                '10',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                          Column(
                            children: [
                              Text('PACKAGE', style: TextStyle(fontSize: 12)),
                              Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // image section
              Image.asset(
                'assets/images/Image.jpg',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // button section
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Action when "SHOP" is pressed
                        print('Shop button pressed');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mall()),
                        );
                      },
                      child: Container(
                        width: 100,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: darkGreen,
                        ),
                        child: Text(
                          'SHOP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        print('Services button pressed');
                      },
                      child: Container(
                        width: 100,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: darkGreen,
                        ),
                        child: Text(
                          'SERVICES',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        print('Posts button pressed');
                      },
                      child: Container(
                        width: 100,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: darkGreen,
                        ),
                        child: Text(
                          'POSTS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // carousel section
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          imagePaths[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),

              // new services
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(bottom: 20),
                color: secondaryColor,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NEW SERVICES',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Recommended based on your preference'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              // Action when "See All" is pressed
                            },
                            child: Text(
                              'View All',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'assets/images/Image.jpg',
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lorem Ipsum',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet constectur',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'RM 10.00',
                                          style: TextStyle(
                                            color: Colors.green[900],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // trending discoveries
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/trending_discoveries.jpg',
                    fit: BoxFit.fill,
                  ),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: darkerGreen),
                    child: MasonryGridView.builder(
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // So it expands to its content
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/Image.jpg',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['title'] ?? '',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      item['desc'] ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // contact us section
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOCATION',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/images/map.png',
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),

                    SizedBox(height: 20),

                    Text(
                      'Sunway Pyramid',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/icon_location2.png',
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/icon_clock2.png',
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 5),
                        Text('10am - 10pm'),
                      ],
                    ),

                    SizedBox(height: 20),

                    Text(
                      'The Gardens Mall',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/icon_location2.png',
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            '10 Floor, Lorem Ipsum Mall, Jalan ss23 Lorem, Selangor, Malaysia',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/icon_clock2.png',
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 5),
                        Text('10am - 10pm'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: darkGreen,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 10),
          unselectedLabelStyle: TextStyle(fontSize: 10),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });

            if (index == 1) {
              // If Mall is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mall()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_home_green.png',
                width: 20,
                height: 20,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_mall_grey.png',
                width: 20,
                height: 20,
              ),
              label: 'MALL',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_discover.png',
                width: 20,
                height: 20,
              ),
              label: 'DISCOVER',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_inbox.png',
                width: 20,
                height: 20,
              ),
              label: 'INBOX',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_account.png',
                width: 20,
                height: 20,
              ),
              label: 'ACCOUNT',
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Action when the button is pressed
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       const SnackBar(content: Text('Floating Action Button Pressed')),
      //     );
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
