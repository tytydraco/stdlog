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

Simply import the `stdlog` package, usually aliasing it, and then call one of the four log level functions. Messages 
can be a regular `Object`, or a `Function` that returns a `String`.

The typical output contains a timestamp, the log level label, and then the log message:

`[2022-08-10T13:22:13.363542] E 7 + 12 != 46, it equals 19; error!`
