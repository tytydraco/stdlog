import 'package:stdlog/stdlog.dart' as std;

const x = 7;
const y = 12;
const result = 46;

void main() {
  std.debug.enabled = true;
  std.debug.log('Running in debug mode!');

  std.info.log('This program adds $x and $y.');
  std.warn.log('Crazy math here, be warned!');

  if ((x + y) != result) {
    // We can use functions as well.
    std.error.log(() {
      const actual = x + y;
      return '$x + $y != $result, it equals $actual; error!';
    });
  }
}
