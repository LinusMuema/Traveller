import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_play/components/colors.dart';
import 'package:flutter_play/components/destination.dart';
import 'package:flutter_play/components/likes.dart';
import 'package:flutter_play/components/texts.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/data/destinations.dart';
import 'package:flutter_play/utils/commons.dart';

class CountryDetails extends StatefulWidget {
  final Country _country;
  CountryDetails(this._country);

  @override
  _CountryDetailsState createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    final destinations = getDestinations(widget._country.name);
    final List<Widget> destinationItems =
        destinations.map((e) => destinationItem(e)).toList();
    final destinationHeight = MediaQuery.of(context).size.height * 0.25;

    return Container(
      width: deviceWidth(context),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Text(widget._country.description, style: h4(Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 10, bottom: 10),
            child: Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: Divider(height: 1, color: grey300),
                        ),
                        Likes(users: widget._country.likes)
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        decoration: darkBackground(),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 25, bottom: 10),
                    child: Text('Places to visit', style: h5(Colors.white))),
                Container(
                  child: CarouselSlider(
                    items: destinationItems,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.25,
                      viewportFraction: 0.75,
                      onPageChanged: (index, _) {
                        setState(() {});
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
