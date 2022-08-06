import 'dart:io';

import 'package:stdlog/src/models/log_level.dart';

final _hasAnsi = stdout.supportsAnsiEscapes;

/// [LogLevel] typically for internal tracing.
final debug = LogLevel(
  name: 'D\t',
  prefix: _hasAnsi ? '\x1B[40m' : '',
  suffix: _hasAnsi ? '\x1B[0m' : '',
);

/// [LogLevel] typically for general output.
final info = LogLevel(
  name: 'I\t',
);

/// [LogLevel] typically for non-fatal errors.
final warn = LogLevel(
  name: 'W\t',
  prefix: _hasAnsi ? '\x1B[33m' : '',
  suffix: _hasAnsi ? '\x1B[0m' : '',
);

/// [LogLevel] typically for fatal errors.
final error = LogLevel(
  name: 'E\t',
  prefix: _hasAnsi ? '\x1B[31m' : '',
  suffix: _hasAnsi ? '\x1B[0m' : '',
  error: true,
);
