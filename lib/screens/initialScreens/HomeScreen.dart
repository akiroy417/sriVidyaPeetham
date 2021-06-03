import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sri Ubhaya Bharathi Vidya Peetham'),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home),
                        Text('Home'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Our Guru'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Astrology'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Homas & Poojs'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Sevas'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Contribution'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.update_rounded),
                        Text('Updates'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Panchangam'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Gallery'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.contact_phone_rounded),
                        Text('Contact'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language_rounded),
                        Text('Language'),
                      ],
                    ),
                  ),
                ),
                // Card(
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.11,
                //     width: MediaQuery.of(context).size.width * 0.22,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.account_circle),
                //         Text('Text'),
                //       ],
                //     ),
                //   ),
                // ),
                // Card(
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.11,
                //     width: MediaQuery.of(context).size.width * 0.22,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.account_circle),
                //         Text('Text'),
                //       ],
                //     ),
                //   ),
                // ),
                // Card(
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.11,
                //     width: MediaQuery.of(context).size.width * 0.22,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.account_circle),
                //         Text('Text'),
                //       ],
                //     ),
                //   ),
                // ),
                // Card(
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.11,
                //     width: MediaQuery.of(context).size.width * 0.22,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.account_circle),
                //         Text('Text'),
                //       ],
                //     ),
                //   ),
                // ),
                // Card(
                //   child: Container(
                //     height: MediaQuery.of(context).size.height * 0.11,
                //     width: MediaQuery.of(context).size.width * 0.22,
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.account_circle),
                //         Text('Text'),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
