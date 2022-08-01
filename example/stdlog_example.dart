import 'package:stdlog/stdlog.dart';

const x = 7;
const y = 12;

void main() {
  // Pretend we are in release mode.
  shouldLogDebug = false;

  debug('Running in debug mode');

  info('Adding $x and $y');

  warn('Crazy math here, be warned!');

  if ((x + y) != 22) {
    error('$x + $y != 22; error!');
  }
}
