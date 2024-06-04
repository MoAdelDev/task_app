import 'dart:io';

bool get isAndroid => Platform.isAndroid;

bool get isIOS => Platform.isIOS;

bool get isMobile => isAndroid || isIOS;

bool get isMac => Platform.isMacOS;

bool get isWindows => Platform.isWindows;

bool get isDesktop => isMac || Platform.isWindows;
