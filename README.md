# stdlog

A wrapper around the built-in stdio IOSinks using the KISS principle.

# Getting started

Add the package to your project: `dart pub add stdlog`.

# Usage

The usage is extremely basic. There are four log levels:

* Debug: fine-grained internal info
* Info: regular user-readable info
* Warning: non-fatal but undesirable info
* Error: potentially fatal info

Each log level has a prefix that can be configured via the global String: `prefix<LEVEL>`. The default prefix
is `[<LEVEL>]\t`.

Each log level can be toggled via the global boolean: `shouldLog<LEVEL>`. All log levels are enabled by default.

A log handler can be set to determine what should be done with the log content. By default, this is set to just pipe the
output to `stdio.writeln`.
