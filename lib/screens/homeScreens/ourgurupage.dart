import 'package:flutter/material.dart';




class OurGuruPage extends StatefulWidget {
  const OurGuruPage({Key? key}) : super(key: key);

  @override
  _OurGuruPageState createState() => _OurGuruPageState();
}

class _OurGuruPageState extends State<OurGuruPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Guru"),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: _builBody(context),
    );
  }

  Widget _builBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.002,
            width: MediaQuery.of(context).size.width * 0.90,
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('About Sri Ubhaya Bharathi Vidya Peetam'),
                  ),
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
                      "In today's busy lifestyle, people are lost in the western culture and are forgetting the Hindu rituals and culture. The knowledge of Hindu culture and rituals and their importance is not being transferred to the younger generation and it's slowly fading from the minds of everyone. Thus people are losing interest in VAIDIK KARMA either due to lack of knowledge or due to knowledgeable persons not within their reach."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " Our Vision   : ",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " Promotion and propagation of the Knowledge of Vedas, Yagams, Puja, Vedanta, Puranas, Itihasas."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " Organize and conduct pujas, Homas, and other religious rites and ceremonies, and festivals of all religions."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " Perform ceremonies, rites, and functions, including weddings, in accordance with the Vaidic traditions."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " Inculcate in youth love and appreciation for art, culture, yoga, and the Hindu Heritage."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Sri Ubhaya Bharathi Vidya Peetam is performing RUDRAABHISHEKAM & CHANDI HOMAM for the well-being of all devotees and for Universal Peace, Happiness, and Harmony. Contact for details: 9000004474  In Case if anyone desires to perform the puja / Homam is unable to come and participate at our Peetham, due to personal commitments, you can still avail of the puja services by using our online services. Please send your Name, Gothram, Star, (Nakshatram), or your time of birth by email or SMS and make the payment online from our website. We will send you the online live link on request exclusively so that you can watch online LIVE from where ever you are."),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Sri Ubhaya Bharathi Vidya Peetam is ready to serve you by performing the puja and Homam as per your requirement at your residence in a systematic and methodical way following the guidelines of shastras and give you the Prashad which will bear you the fruits of the puja and Homam to neutralize the ill effects of the Grahas and give you good health, wealth and prosperity."),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

}
