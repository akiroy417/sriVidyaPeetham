import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';

import 'package:srividyapeetham/screens/homeScreens/ourgurupage.dart';

import 'homeScreenOld.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool language = false;
  bool aboutSanthan = false;
  bool sansthanLiterature = false;
  bool shirdiTourism = false;
  bool onlineServices = false;
  bool media = false;
  bool tendersQuotations = false;
  bool contactUs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        title: Column(
          children: [
            Text(
              " Shri Manik Prabhu Samsthan",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              "The Abode Of Supreme Bliss",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [Column(children: [
            Container(

                width: double.infinity,
                height: 60,
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/cc07dd89f61adbcc2ff7ef283517c8d7.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Rajesh",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )),
            language ? _languageOpen(context) : _languageClosed(context),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                width: 290,
                height: 40,
                child: DropdownButton(
                  isExpanded: true,
                  items: [],
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            aboutSanthan
                ? _aboutSanthanOpen(context)
                : _aboutSanthanClosed(context),
            sansthanLiterature
                ? _sansthanLiteratureOpen(context)
                : _sansthanLiteratureClosed(context),
            shirdiTourism
                ? _shirdiTourismOpen(context)
                : _shirdiTourismClosed(context),
            onlineServices
                ? _onlineServicesOpen(context)
                : _onlineServicesClosed(context),
            media ? _mediaOpen(context) : _mediaClosed(context),
            tendersQuotations
                ? _tendersQuotationsOpen(context)
                : _tendersQuotationsClosed(context),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                width: 290,
                height: 40,
                child: DropdownButton(
                  isExpanded: true,
                  items: [],
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "RTI",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            contactUs ? _contactUsOpen(context) : _contactUsClosed(context),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                width: 290,
                height: 40,
                child: DropdownButton(
                  isExpanded: true,
                  items: [],
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Change Password",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                width: 290,
                height: 40,
                child: DropdownButton(
                  isExpanded: true,
                  items: [],
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My Transactions",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                width: 290,
                height: 40,
                child: DropdownButton(
                  isExpanded: true,
                  items: [],
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Terms And Conditions",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(
              height: 05,
            ),
            Container(
              width: double.infinity,
              color: Colors.red,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                    size: 25,
                  ),
                  Text(
                    "LogOut",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
      body: _buildBody(context),
    );

  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.40,
          child: Center(
            child: CarouselSlider(
              items: [
                Image.asset(
                    'assets/icons/cc07dd89f61adbcc2ff7ef283517c8d7.png'),
                Image.asset(
                    'assets/icons/ef4d03ec3fa3beb9cbba26315f08d03c.png'),
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Wrap(
              children: [
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Home'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (OurGuruPage()),
                                  ));
                            }),
                        Text('Our Guru'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {

                            }),
                        Text('Astrology'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Homas & Poojs'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Sevas'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Contribution'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Updates'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Panchangam'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Gallery'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Contact'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => (HomeScreenOld()),
                                  ));
                            }),
                        Text('Language'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }


  Widget _languageOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    language = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Language',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Telugu',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hindi',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                language = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Language',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _aboutSanthanOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    aboutSanthan = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'AboutSanthan',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ad -hoc Committee',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Departments',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Board Resolutions',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Work Tenure',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily Programme',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Festivals',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Temple',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reports',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sansthan Regulations',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Appeal',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Medical aid',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notice',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Statistical Reports',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Information Centre',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Onging Projects',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _aboutSanthanClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                aboutSanthan = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About Santhan',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sansthanLiteratureOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    sansthanLiterature = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SansthanLiterature',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sai Satcharita',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aarti',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saileela',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sai Arpan',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sansthanLiteratureClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                sansthanLiterature = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SansthanLiterature',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shirdiTourismOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    shirdiTourism = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shirdi Tourism',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How to Reach Shirdi',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Place to Visit',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Map',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shirdiTourismClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                shirdiTourism = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shirdi Tourism',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _onlineServicesOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    onlineServices = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Online Services',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Darshan',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aarti',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pooja',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Accommodation',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Donation',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Publications',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Membership',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Palkhi Registration',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vendor Registration',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _onlineServicesClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                onlineServices = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Online Services',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _mediaOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    media = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Media',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Audio',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Video',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Photo Gallery',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Downloads',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'News',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Centenary Events',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Press Media',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invitation',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mediaClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                media = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Media',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tendersQuotationsOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    tendersQuotations = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tenders/Quotations',
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tenders',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tenders Awarded',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Blacklisted Vendors',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tendersQuotationsClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                tendersQuotations = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tenders/Quotations',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _contactUsOpen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    contactUs = false;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.red,fontSize: 15),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Departments',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQ',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Feedback',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Emergency Helpline ',
                        style: TextStyle(color: Colors.red),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactUsClosed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                contactUs = true;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.red,fontSize: 15),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
