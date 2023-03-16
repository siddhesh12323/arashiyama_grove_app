import 'package:flutter/material.dart';
import 'package:flutter_application_001/models/location.dart';
import './styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name, style: Styles.navBarTitle,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderBody(context, location),
      ),
    );
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170));
    result.addAll(_renderFacts(location));
    return result;
  }

  List<Widget> _renderFacts(Location location) {
    var result = <Widget>[];
    for (var i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
      child: Text(text,
      textAlign: TextAlign.left,
      style: Styles.headerLarge,),
    );
  }

  Widget _sectionText(String text) {
    return Container(padding: EdgeInsets.fromLTRB(25, 25, 25, 15), child: Text(text, style: Styles.textDefault,));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
