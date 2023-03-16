import 'package:flutter/material.dart';
import 'package:flutter_application_001/mocks/mock_location.dart';
import './location_detail.dart';
import 'models/location.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();
  return runApp(MaterialApp(
    home: LocationDetail(location: mockLocation,),
  ));
}
