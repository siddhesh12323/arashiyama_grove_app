import 'package:flutter/material.dart';
import 'package:flutter_application_001/mocks/mock_location.dart';
import './location_detail.dart';
import 'models/location.dart';
import 'models/location_list.dart';

void main() {
  final mockLocation = MockLocation.fetchAll();
  return runApp(MaterialApp(
    home: LocationList(locations: mockLocation),
  ));
}
