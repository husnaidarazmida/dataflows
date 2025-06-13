import 'package:dataflows/homepage.dart';
import 'package:flutter/material.dart';

class Mall extends StatefulWidget {
  const Mall({super.key});

  @override
  State<Mall> createState() => _MallState();
}

class _MallState extends State<Mall> {
  int _currentIndex = 1;

  static const darkGreen = Color(0xFF254B3A);
  // static const darkerGreen = Color(0xFF002b1d);
  // static const secondaryColor = Color(0xFFf4f4f4);

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': null,
      'discount': null,
    },
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': 50,
      'discount': '50%',
    },
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': null,
      'discount': null,
    },
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': 50,
      'discount': '50%',
    },
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': null,
      'discount': null,
    },
    {
      'image': 'assets/images/Image.jpg',
      'title': 'Lorem Ipsum',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      'price': 100,
      'discountedPrice': 50,
      'discount': '50%',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/images/icon_back.png',
            width: 15,
            height: 15,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          height: 35,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              hintText: 'Search Salon',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/icon_search.png',
                  width: 10,
                  height: 10,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/icon_filter.png',
                  width: 10,
                  height: 10,
                ),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 13),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          padding: EdgeInsets.only(top: 20, bottom: 50),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final item = products[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          item['image'],
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (item['discountedPrice'] != null)
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: darkGreen,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              item['discount'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            item['desc'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                          SizedBox(height: 5),
                          if (item['discountedPrice'] != null) ...[
                            Text(
                              'RM ${item['price'].toStringAsFixed(2)}',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'RM ${item['discountedPrice'].toStringAsFixed(2)}',
                              style: TextStyle(color: Colors.green[900]),
                            ),
                          ] else
                            Text(
                              'RM ${item['price'].toStringAsFixed(2)}',
                              style: TextStyle(color: Colors.green[900]),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
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

            if (index == 0) {
              // If Homepage is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_home_grey.png',
                width: 20,
                height: 20,
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/nav_mall_green.png',
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
    );
  }
}
