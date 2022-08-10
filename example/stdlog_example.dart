import 'package:stdlog/stdlog.dart' as std;

const x = 7;
const y = 12;
const result = 46;

void main() {
  std.debug('Running in debug mode!');
  std.info('This program adds $x and $y.');
  std.warn('Crazy math here, be warned!');

  if ((x + y) != result) {
    // We can use functions as well.
    std.error(() {
      const actual = x + y;
      return '$x + $y != $result, it equals $actual; error!';
    });
  }
}
