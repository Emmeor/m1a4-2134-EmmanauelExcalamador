import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

Future<String> _run(List<String> inputs) async {
  final process = await Process.start('dart', ['run', 'bin/calculator.dart']);
  for (final line in inputs) {
    process.stdin.writeln(line);
  }
  await process.stdin.flush();
  await process.stdin.close();
  final out = await process.stdout.transform(utf8.decoder).join();
  await process.exitCode;
  return out;
}

/// Each test below is worth one point. student.json must be filled in (6
/// fields) and the calculator must produce the five correct results for two
/// different input pairs (so the answers can't be hardcoded).
void main() {
  group('Student info (student.json)', () {
    late Map<String, dynamic> info;

    setUpAll(() {
      info = jsonDecode(File('student.json').readAsStringSync())
          as Map<String, dynamic>;
    });

    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      test('$field is filled in', () {
        expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
      });
    }
  });

  group('Calculator with first=10, second=4', () {
    late String out;
    setUpAll(() async => out = await _run(['10', '4']));

    test('sum is 14', () => expect(out, contains('14'), reason: '10 + 4 = 14'));
    test('difference is 6',
        () => expect(out, contains('6'), reason: '10 - 4 = 6'));
    test('product is 40',
        () => expect(out, contains('40'), reason: '10 * 4 = 40'));
    test('quotient is 2.5',
        () => expect(out, contains('2.5'), reason: '10 / 4 = 2.5 (1st / 2nd)'));
    test('average is 7',
        () => expect(out, contains('7'), reason: 'average of 10 and 4 is 7'));
  }, timeout: const Timeout(Duration(seconds: 60)));

  group('Calculator with first=9, second=2', () {
    late String out;
    setUpAll(() async => out = await _run(['9', '2']));

    test('sum is 11', () => expect(out, contains('11'), reason: '9 + 2 = 11'));
    test('difference is 7',
        () => expect(out, contains('7'), reason: '9 - 2 = 7'));
    test('product is 18',
        () => expect(out, contains('18'), reason: '9 * 2 = 18'));
    test('quotient is 4.5',
        () => expect(out, contains('4.5'), reason: '9 / 2 = 4.5 (1st / 2nd)'));
    test('average is 5.5',
        () => expect(out, contains('5.5'), reason: 'average of 9 and 2 is 5.5'));
  }, timeout: const Timeout(Duration(seconds: 60)));
}
