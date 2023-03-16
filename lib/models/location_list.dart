import 'package:flutter/material.dart';
import 'package:flutter_application_001/location_detail.dart';
import 'package:flutter_application_001/models/location.dart';
import 'package:flutter_application_001/styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  const LocationList({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Locations',
          style: Styles.navBarTitle,
        ),
      ),
      body: ListView.builder(
          itemCount: this.locations.length,
          itemBuilder: ((context, index) => _listViewItemBuilder(context, index))
          ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: _itemThumbnail(this.locations[index]),
      title: _itemTitle(this.locations[index]),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => LocationDetail(
                      location: this.locations[index],
                    ))));
      },
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(
        location.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      location.name,
      style: Styles.textDefault,
    );
  }
}
