import 'dart:io';

/// A log level of a subjective severity. Can be extended if needed.
class LogLevel {
  /// Creates a new [LogLevel] given a [name].
  LogLevel({
    required this.name,
    this.enabled = true,
    this.error = false,
    this.prefix = '',
    this.suffix = '',
  });

  /// The display name of the log level.
  String name;

  /// If true, process messages from this log level.
  bool enabled;

  /// If true, log to [stderr] instead of [stdout].
  bool error;

  /// Optional prefix to apply. Can be used for ANSI codes.
  String prefix;

  /// Optional suffix to apply. Can be used for ANSI codes.
  String suffix;

  /// Write some content to the output handler.
  void log(Object? message) {
    if (!enabled) return;

    // Evaluate an anonymous function that returns some content.
    final messageContent =
        message is Object? Function() ? message.call() : message;

    if (message == null) return;

    var output = '';

    output += prefix;

    final isoTimestamp = DateTime.now().toIso8601String();
    output += '[$isoTimestamp]';
    output += ' ';

    output += name;
    output += ' ';

    output += messageContent.toString();

    output += suffix;

    error ? stderr.writeln(output) : stdout.writeln(output);
  }
}
