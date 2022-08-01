import 'dart:io';

/// Text to prepend to [debug] calls
String prefixDebug = '[DEBUG]\t';

/// Text to prepend to [info] calls
String prefixInfo = '[INFO]\t';

/// Text to prepend to [warn] calls
String prefixWarn = '[WARN]\t';

/// Text to prepend to [error] calls
String prefixError = '[ERROR]\t';

/// A boolean to determine if we should allow calls to [debug].
bool shouldLogDebug = true;

/// A boolean to determine if we should allow calls to [info].
bool shouldLogInfo = true;

/// A boolean to determine if we should allow calls to [warn].
bool shouldLogWarn = true;

/// A boolean to determine if we should allow calls to [error].
bool shouldLogError = true;

/// Function to handle log calls containing some content.
void Function(Object? content) logHandler = stdout.writeln;

/// Log fine-grained [content] to the [logHandler].
void debug(Object? content) {
  if (shouldLogDebug) logHandler('$prefixDebug$content');
}

/// Log regular [content] to the [logHandler].
void info(Object? content) {
  if (shouldLogInfo) logHandler('$prefixInfo$content');
}

/// Log non-fatal warning [content] to the [logHandler].
void warn(Object? content) {
  if (shouldLogWarn) logHandler('$prefixWarn$content');
}

/// Log potentially fatal error [content] to the [logHandler].
void error(Object? content) {
  if (shouldLogError) logHandler('$prefixError$content');
}
