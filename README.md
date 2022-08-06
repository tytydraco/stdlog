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

The base class for a log level is `LogLevel`. New log levels can be instantiated this way, but by default, the four 
above are already globally accessible.

Each log level has a `name` (the denotation of this level), a boolean called `error` that will use `stderr` over 
`stdout` if enabled, and a `prefix` and `suffix`, usually for ANSI escapes.
