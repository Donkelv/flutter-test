
import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/counter.dart';

void main() {
  test('Locations can be fetched', () {
    final locations = Location.fetchAll();
    expect(locations.length, greaterThan(0));

    for (Location l in locations){
      expect(l.facts.length, greaterThan(0));
    }
  });

  test('Locations can be fetched by ID', (){
    final location = Location.fetchAll();


    for (Location l in location){
      final fetchLocation = Location.fetchByID(l.id);
      expect(fetchLocation, isNotNull);
      expect(fetchLocation.id, equals(l.id));
    }

  });
}