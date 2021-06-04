import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreenOld extends StatefulWidget {
  const HomeScreenOld({Key? key}) : super(key: key);

  @override
  _HomeScreenOldState createState() => _HomeScreenOldState();
}

class _HomeScreenOldState extends State<HomeScreenOld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _builBody(context),
    );
  }

  Widget _builBody(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Image.asset('assets/images/slider42.jpg'),
            Image.asset('assets/images/slider5.jpg'),
          ],
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        Expanded(
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.002,
            width: MediaQuery.of(context).size.width * 0.90,
            child: ListView(
              children: [
                Center(
                  child: Text('Welcome to Sri Ubhaya Bharathi Vidya Peetham'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.002,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '    Sri Ubhaya Bharathi Vidya Peetham has commenced by Sri'
                      ' Vyasoju Gopi Krishna Sharma for devotees who are interesting'
                      ' to perform Puja/Homa or other related services related to'
                      ' Hindu traditions.'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Now Devotees can witness the Puja/Homa from their'
                      ' respective location or online (live in YouTube, Facebook).'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'By Online Their Gotra and Names will be included '
                      'in Sankalpa while performing Puja/Homa which they can witness.'),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Image.asset(
                      'assets/images/WhatsApp Image 2021-03-27 at 8_1.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '‘Puja’ is defined as “purnaat jayate iti puja”, which'
                      ' means ‘that which is born (jayate – ja) out of the fullness'
                      ' (purnaat – PU)’. So puja means the spontaneous happening which'
                      ' is born out of fullness and contentment. Puja is an innocent'
                      ' playful process reciprocating the supreme love of nature.'
                      ' The state of mind with which the puja is performed, the'
                      ' material (samagri) used, and the chanting of mantras during'
                      ' the puja, profoundly affect the environment and people attending'
                      ' the puja. The vibrations purify the environment and have a calming'
                      ' effect on people’s minds. Puja can be well compared to meditation'
                      ' or yoga. The experience of oneness of the worshipper with the'
                      ' worshipped is the realization of the true nature of the Self.'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
