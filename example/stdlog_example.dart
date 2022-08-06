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
    std.error.log('$x + $y != $result; error!');
  }
}
