import 'package:stdlog/stdlog.dart';
import 'package:test/test.dart';

void main() {
  // Log to print, not stdout for testing purposes.
  logHandler = print;

  group('Stdlog', () {
    test('All logs match default prefixes', () {
      expect(() => debug('test'), prints('${prefixDebug}test\n'));
      expect(() => info('test'), prints('${prefixInfo}test\n'));
      expect(() => warn('test'), prints('${prefixWarn}test\n'));
      expect(() => error('test'), prints('${prefixError}test\n'));
    });

    test('All logs with custom prefixes', () {
      prefixDebug = 'D\t';
      prefixInfo = 'I\t';
      prefixWarn = 'W\t';
      prefixError = 'E\t';

      expect(() => debug('test'), prints('D\ttest\n'));
      expect(() => info('test'), prints('I\ttest\n'));
      expect(() => warn('test'), prints('W\ttest\n'));
      expect(() => error('test'), prints('E\ttest\n'));
    });

    test('Only some logs', () {
      shouldLogDebug = false;
      shouldLogWarn = false;

      expect(() => debug('test'), prints(''));
      expect(() => info('test'), prints('${prefixInfo}test\n'));
      expect(() => warn('test'), prints(''));
      expect(() => error('test'), prints('${prefixError}test\n'));
    });
  });
}
