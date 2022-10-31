import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_ludsc/providers/theme_provider.dart';
import 'package:site_ludsc/routes.dart';
import 'package:site_ludsc/screens/home/home_screen.dart';
import 'package:site_ludsc/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SiteLUDSC());
}

class SiteLUDSC extends StatelessWidget {
  const SiteLUDSC({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, theme, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'DSC | Lakehead University',
            theme: lightThemeData(context),
            darkTheme: darkThemeData(context),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            initialRoute: HomeScreen.routeName,
            routes: routes,
          );
        },
      ),
    );
  }
}
