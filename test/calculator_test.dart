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

/// One test = the points for this activity. It passes only if your
/// student.json is filled in AND the calculator outputs are all correct.
void main() {
  test('Activity 4 complete: calculator + student.json filled', () async {
    // 1. student.json must be filled in
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }

    // 2. Two different input pairs, so the answers can't be hardcoded:
    // the program has to actually read the numbers and compute.

    // first=10, second=4  ->  sum 14, diff 6, product 40, quotient 2.5, avg 7
    final a = await _run(['10', '4']);
    expect(a, contains('14'), reason: 'sum of 10 and 4 is 14');
    expect(a, contains('6'), reason: 'difference 10 - 4 is 6');
    expect(a, contains('40'), reason: 'product of 10 and 4 is 40');
    expect(a, contains('2.5'),
        reason: 'quotient 10 / 4 is 2.5 (note the order: 1st / 2nd)');
    expect(a, contains('7'), reason: 'average of 10 and 4 is 7');

    // first=9, second=2  ->  sum 11, diff 7, product 18, quotient 4.5, avg 5.5
    final b = await _run(['9', '2']);
    expect(b, contains('11'), reason: 'sum of 9 and 2 is 11');
    expect(b, contains('7'), reason: 'difference 9 - 2 is 7');
    expect(b, contains('18'), reason: 'product of 9 and 2 is 18');
    expect(b, contains('4.5'),
        reason: 'quotient 9 / 2 is 4.5 (note the order: 1st / 2nd)');
    expect(b, contains('5.5'), reason: 'average of 9 and 2 is 5.5');
  }, timeout: const Timeout(Duration(seconds: 60)));
}
