import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shop/utils/navigator/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return CupertinoApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: const CupertinoThemeData(
        primaryColor: CupertinoDynamicColor.withBrightness(
          color: Color(0xFF1F1F1F),
          darkColor: Color(0xFFE0E0E0),
        ),
        textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              color: CupertinoDynamicColor.withBrightness(
                color: CupertinoColors.black,
                darkColor: CupertinoColors.white,
              ),
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
            ),
            actionTextStyle: TextStyle(
              fontWeight: FontWeight.w500,
            )),
      ),
      //home: HomePage(),
    );
  }
}
