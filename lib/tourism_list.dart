import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percobaandua/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'data/api/api_Service.dart';
import 'data/model/tourism_place.dart';
import 'detail_screen.dart';
import 'list_item.dart';

class TourismList extends StatefulWidget {

  const TourismList({Key? key}) : super (key: key);

  @override
  _TourismListState createState() => _TourismListState();
}
class _TourismListState extends State<TourismList> {
  // final List<TourismPlace> tourismPlaceList = [
  //   TourismPlace(
  //       name: 'Surabaya Submarine Monument',
  //       location: 'Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng',
  //       imageAsset: 'assets/images/1.jpg',
  //       day: 'Setiap Hari',
  //       time: '08:00 - 17:00',
  //       price: 'Rp 5.000',
  //       description: "Surabaya Submarine Monument or as known as Monumen Kapal Selam (Monkasel) is the largest submarine monument in Asia, which was built in riverside of Kalimas, Surabaya. This monument was built by idea of Navy Veterans.\nKRI Pasopati 410, is one of SS Whiskey Class SS, made in Vladi Wostok Russian in 1952. This submarines was participated in Navy since 29th of January, 1962, and the main job were to destroy anti-shipping from enemies, supervision and raids silently.",
  //       listImages: [
  //         'assets/images/1.jpg',
  //         'assets/images/2.jpg',
  //         'assets/images/3.jpg',
  //         'assets/images/4.jpg',
  //       ]
  //   ),
  //   TourismPlace(
  //       name: 'Kelenteng Sanggar Agung',
  //       location: 'Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak',
  //       imageAsset: 'assets/images/klenteng.jpg',
  //       day: 'Setiap Hari',
  //       time: '12:00 - 21:30',
  //       price: 'Rp 10.000',
  //       description: "Sanggar Agung Temple or Hong San Tang (Chinese: 宏善堂) is a Chinese temple in Surabaya dedicated to Chinese deities and other Asian religious icons. It is located within the Pantai Ria amusement park and has become a tourist destination, even though it is originally a worship place for Tridharma followers. The name of Sanggar Agung is derived from Indonesian language which can be translated as Great Hall.",
  //       listImages: [
  //         'assets/images/klenteng1.jpg',
  //         'assets/images/klenteng2.jpg',
  //         'assets/images/klenteng3.jpg',
  //         'assets/images/klenteng4.jpg',
  //       ]
  //   ),
  //   TourismPlace(
  //       name: 'Sampoerna of Surabaya',
  //       location: 'Taman Sampoerna No.6, Krembangan Utara, Kec. Pabean Cantian',
  //       imageAsset: 'assets/images/sam1.jpg',
  //       day: 'Setiap Hari',
  //       time: '09:00 - 20:00',
  //       price: 'Rp 15.000',
  //       description: "The House of Sampoerna is a tobacco museum and headquarters of Sampoerna located in Surabaya. The main building's architectural style influenced by Dutch colonial-style compound was built in 1862, and is now a preserved historical site. Previously used as an orphanage managed by the Dutch‚ it was purchased in 1932, by Liem Seeng Tee‚ the founder of Sampoerna‚ with the intent of it being used as Sampoerna's first major cigarette production facility.",
  //       listImages: [
  //         'assets/images/sampoerna1.jpg',
  //         'assets/images/sampoerna2.jpg',
  //         'assets/images/sampoerna3.jpg',
  //         'assets/images/sampoerna4.jpg',
  //       ]
  //   ),
  //   TourismPlace(
  //       name: 'Kenjeran Beach',
  //       location: 'Kenjeran, Bulak, Surabaya City',
  //       imageAsset: 'assets/images/kenjeran.jpg',
  //       day: 'Setiap Hari',
  //       time: '07:00 - 17:00',
  //       price: 'Rp 6.000',
  //       description: "Kenjeran beach is located in Kenjeran district in the east top Surabaya, which is ± 9 km from Surabaya. Kenjeran beach has divided into two beaches; they are Old Kenjeran Beach and New Kenjeran Beach.",
  //       listImages: [
  //         'assets/images/kenjeran1.jpg',
  //         'assets/images/kenjeran2.jpg',
  //         'assets/images/kenjeran3.jpg',
  //         'assets/images/kenjeran4.jpg',
  //       ]
  //   ),
  //   TourismPlace(
  //       name: 'Sepuluh November Museum of Surabaya',
  //       location: 'Pahlawan St, Alun-alun Contong, Bubutan',
  //       imageAsset: 'assets/images/senop.jpg',
  //       day: 'Setiap Hari',
  //       time: '09:00 - 19:00',
  //       price: 'Rp 15.000',
  //       description: "The Surabaya Ten November Museum is one of the museums located in the city of Surabaya, built in 1945. This museum was built with the aim of studying and deepening the events of the Ten November 1945 Battle, the Ten November Museum is located at Jalan Pahlawan, Surabaya.",
  //       listImages: [
  //         'assets/images/senop1.jpg',
  //         'assets/images/senop2.jpg',
  //         'assets/images/senop3.jpg',
  //         'assets/images/senop4.jpg',
  //       ]
  //   ),
  //   TourismPlace(
  //       name: 'Muhammad Cheng Hoo Mosque',
  //       location: 'Jl. Gading No.2, Ketabang, Kec. Genteng',
  //       imageAsset: 'assets/images/chengho.jpg',
  //       day: 'Setiap Hari',
  //       time: '09:00 - 22:00',
  //       price: 'Rp 10.000',
  //       description: "Cheng Hoo Mosque is a Chinese Muslim nuanced Mosque located at Jalan Gading, Genteng, Surabaya, Â±1.000 m north of Surabaya City Hall Building. This mosque was founded on the initiative of the Elder, advisors, administrators PITI, and management of the Foundation Haji Muhammad Cheng Ho Indonesia of East Java and Chinese community leaders of Surabaya.",
  //       listImages: [
  //         'assets/images/chengho1.jpg',
  //         'assets/images/chengho2.jpg',
  //         'assets/images/chengho3.jpg',
  //         'assets/images/chengho4.jpg',
  //       ]
  //   )
  // ];
  late Future<TourismResult> _tourism;
  @override
  void initState() {
    super.initState();
    _tourism = ApiService().topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _tourism,
      builder: (context, AsyncSnapshot<TourismResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var place = snapshot.data?.tourismPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return DetailScreen(place: place!);
                        }));
                  },
                  child: Consumer<DoneTourismProvider>(
                    builder: (context, DoneTourismProvider data, widget) {
                      final List<TourismPlace> doneTourismPlaceList =
                          Provider.of<DoneTourismProvider>(context,
                              listen: false)
                              .doneTourismPlaceList;
                      return ListItem(
                        place: place!,
                        isDone: doneTourismPlaceList.contains(place),
                        onCheckboxClick: (bool? value) {
                          setState(() {
                            if (value != null) {
                              value
                                  ? doneTourismPlaceList.add(place)
                                  : doneTourismPlaceList.remove(place);
                            }
                          });
                        },
                      );
                    },
                  ),
                );
              },
              itemCount: snapshot.data?.tourismPlaceList.length,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Text('');
          }
        }
      },
    );
  }
}
