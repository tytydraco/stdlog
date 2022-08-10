import 'dart:io';

final _hasAnsi = stdout.supportsAnsiEscapes;

/// Wrap some [content] with an [ansiCode] if the terminal supports it.
String _withAnsi(String content, String ansiCode) =>
    _hasAnsi ? '$ansiCode$content\x1B[0m' : content;

/// Return some formatted content given a log [label] and a [message].
String? _makeRecord(String label, Object? message) {
  // Evaluate an anonymous function that returns some content.
  final messageContent =
      message is Object? Function() ? message.call() : message;

  if (messageContent == null) return null;

  final isoTimestamp = DateTime.now().toIso8601String();
  return '[$isoTimestamp] $label $messageContent';
}

/// Log low-level debug content. The [message] can also be an anonymous function
/// that returns a [String].
void debug(Object? message) {
  final record = _makeRecord('D', message);
  if (record != null) stdout.writeln(_withAnsi(record, '\x1B[37m'));
}

/// Log regular user content. The [message] can also be an anonymous function
/// that returns a [String].
void info(Object? message) {
  final record = _makeRecord('I', message);
  if (record != null) stdout.writeln(record);
}

/// Log non-fatal warning content. The [message] can also be an anonymous
/// function that returns a [String].
void warn(Object? message) {
  final record = _makeRecord('W', message);
  if (record != null) stdout.writeln(_withAnsi(record, '\x1B[33m'));
}

/// Log catastrophic error content. The [message] can also be an anonymous
/// function that returns a [String].
void error(Object? message) {
  final record = _makeRecord('E', message);
  if (record != null) stderr.writeln(_withAnsi(record, '\x1B[31m'));
}
