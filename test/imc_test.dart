import 'package:test/test.dart';
import 'package:imc/person.dart';

void main() {
  group('Person Class Tests', () {
    test('Valid Person Object', () {
      final personObject = Person(name: 'Alice', height: 160.0, mass: 55.0);
      expect(personObject.isValid(), true);
    });

    test('Invalid Person Object - Missing Name', () {
      final personObject = Person(name: '', height: 160.0, mass: 55.0);
      expect(personObject.isValid(), false);
    });

    test('Invalid Person Object - Zero Height', () {
      final personObject = Person(name: 'Bob', height: 0.0, mass: 55.0);
      expect(personObject.isValid(), false);
    });

    test('Invalid Person Object - Zero Mass', () {
      final personObject = Person(name: 'Charlie', height: 170.0, mass: 0.0);
      expect(personObject.isValid(), false);
    });

    test('Calculate IMC', () {
      final personObject = Person(name: 'Eve', height: 160.0, mass: 50.0);
      expect(personObject.imc(), 19.531249999999996);
    });
  });
}
