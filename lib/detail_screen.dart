import 'package:flutter/material.dart';

import 'data/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super (key: key);
  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: SafeArea(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(place.imageAsset),
              Container(
                //Title
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'Lobster'
                  ),
                ),
              ),

              //spaceEvenly
              Container(
                //Icons
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        Text(place.day)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.schedule),
                        Text(place.time),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.attach_money),
                        Text(place.price),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                //Descriptions
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),

              Container(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(place.listImages[index]),
                      ),
                    );
                  },
                  itemCount: place.listImages.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          )
      ),
    );
  }
}