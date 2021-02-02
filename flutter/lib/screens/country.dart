import 'package:flutter/material.dart';
import 'package:flutter_play/components/background.dart';
import 'package:flutter_play/components/containers.dart';
import 'package:flutter_play/components/country_details.dart';
import 'package:flutter_play/components/headings.dart';
import 'package:flutter_play/components/rotate.dart';
import 'package:flutter_play/data/countries.dart';
import 'package:flutter_play/data/destinations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measurer/measurer.dart';
import 'package:swipedetector/swipedetector.dart';

class CountryInfo extends StatefulWidget {
  @override
  _CountryInfoState createState() => _CountryInfoState();
}

class _CountryInfoState extends State<CountryInfo> {
  var _detailsState = false;
  var _opacity = 0.0;
  var contentHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    final Country _country = ModalRoute.of(context).settings.arguments;
    final count = getDestinations(_country.name).length;
    final details = CountryDetails(_country);
    final topPadding = MediaQuery.of(context).padding.top + 5;
    final location = _country.continent;
    final places = "$count places to visit";
    final caption = _detailsState ? location : places;

    return Scaffold(
      body: Hero(
        tag: _country.name,
        child: ContainerBackground(
          image: _country.image,
          content: BlurBackground(
              detailsState: _detailsState,
              content: SwipeDetector(
                onSwipeUp: () {
                  updateDetails(true);
                },
                onSwipeDown: () {
                  updateDetails(false);
                },
                child: ContainerGradient(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: topPadding),
                          child: SvgPicture.asset('assets/images/back.svg'),
                        ),
                      ),
                      Expanded(
                        child: Stack(children: [
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            child: Measurer(
                              onMeasure: (size, constraints) {
                                setChildHeight(size.height);
                              },
                              child: AnimatedOpacity(
                                opacity: _opacity,
                                duration: Duration(milliseconds: 500),
                                child: _detailsState ? details : Container(),
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            bottom: _detailsState ? contentHeight : 0.0,
                            left: 0.0,
                            duration: Duration(milliseconds: 300),
                            child: Heading(
                              heading: _country.name,
                              cap: caption,
                              color: Colors.white,
                              large: true,
                            ),
                          ),
                        ]),
                      ),
                      Rotate(
                        animate: _detailsState,
                        content: GestureDetector(
                          onTap: () => updateDetails(!_detailsState),
                          child: Container(
                            height: 24,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Center(
                              child: SvgPicture.asset('assets/images/more.svg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  setChildHeight(double height) {
    setState(() {
      contentHeight = height;
    });
  }

  updateDetails(bool show) {
    setState(() {
      _detailsState = show;
      _opacity = show ? 1.0 : 0.0;
    });
  }
}
