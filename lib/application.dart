import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nure_timetable/ui/pages/settings_page/settings_page_bloc.dart';
import 'package:nure_timetable/ui/pages/splash/splash_page_bloc.dart';
import 'package:nure_timetable/ui/pages/timetable/timetable_page_bloc.dart';

import 'api/api_client.dart';
import 'res/app_colors.dart';
import 'res/strings.dart';
import 'ui/pages/splash/splash_page.dart';
import 'utils/storage.dart';

class App extends StatelessWidget {
  void _setPortraitOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    _setPortraitOnly();
    return BlocProvider(
      blocs: [
        Bloc((Inject i) => SplashPageBloc(i.get<ApiClient>()), singleton: false),
        Bloc((Inject i) => TimetablePageBloc(i.get<ApiClient>()), singleton: false),
        Bloc((Inject i) => SettingsPageBloc(), singleton: false),
      ],
      dependencies: [
        Dependency((Inject i) => ApiClient(context)),
      ],
      child: _buildApp(context),
    );
  }

  Widget _buildApp(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme.apply(
          bodyColor: AppColors.current().textColor,
          displayColor: AppColors.current().textColor,
          fontFamily: 'Rubik',
        );
    return StreamBuilder<String>(
      stream: Storage().languageCodeStream,
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.current().appName,
          theme: ThemeData(
            accentColor: AppColors.current().blue,
            scaffoldBackgroundColor: AppColors.current().lightGrey,
            textTheme: textTheme,
          ),
          home: SplashPage(),
        );
      },
    );
  }
}
