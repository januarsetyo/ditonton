import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/io_client.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

Future<IOClient> createSslClient({required String certPath}) async {
  final context = SecurityContext(withTrustedRoots: false);

  final sslCert = await rootBundle.load(certPath);
  context.setTrustedCertificatesBytes(sslCert.buffer.asUint8List());

  final HttpClient httpClient = HttpClient(context: context)
    ..badCertificateCallback =
        (X509Certificate cert, String host, int port) => false;

  return IOClient(httpClient);
}
