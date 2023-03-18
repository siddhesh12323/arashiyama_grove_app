import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_001/mocks/mock_location.dart';
import 'package:flutter_application_001/app.dart';
import 'package:image_test_utils/image_test_utils.dart';

void main() {
  testWidgets('test app startup', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(App());
      final mockLocation = MockLocation.fetchAny();
      expect(find.text(mockLocation.name), findsOneWidget);
      expect(find.text('${mockLocation.name}random'), findsNothing);
    });
  });
}
