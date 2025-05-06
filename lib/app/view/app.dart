import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/app/theme/app_theme.dart';
import 'package:eizo_mushi/features/library/bloc/favorite_list_bloc.dart';
import 'package:eizo_mushi/features/main/ui/screen/main_screen.dart';
import 'package:eizo_mushi/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteBloc>()..add(const FavoriteFetch()),
      child: MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const MainScreen(),
      ),
    );
  }
}
