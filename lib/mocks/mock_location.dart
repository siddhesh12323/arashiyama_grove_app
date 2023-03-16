import 'package:flutter_application_001/models/location.dart';
import 'package:flutter_application_001/models/location_fact.dart';

class MockLocation extends Location {
  MockLocation({required super.name, required super.url, required super.facts});

  // MockLocation({required super.name, required super.url, required super.facts});

  static Location FetchAny() {
    return Location(
        name: 'Arashiyama Banboo Grove, Kyoto, Japan',
        url: 'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto Airport, with several terminals, is located 16 kilometers south of the city and iis also known as Kyoto. Kyoto can also be reached by transport links from other regional airports')
        ]);
  }
}
