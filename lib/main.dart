import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://13593317a25641a89fd26f980ea64e78@o1372861.ingest.sentry.io/6681341';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(GetMaterialApp(
      navigatorObservers: [
        SentryNavigatorObserver(),
      ],
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    )),
  );

  // or define SENTRY_DSN via Dart environment variable (--dart-define)
}
