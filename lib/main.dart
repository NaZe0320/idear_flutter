import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idear/app/view/pages/screen_home.dart';
import 'package:idear/app/viewmodel/viewmodel_post.dart';
import 'package:idear/app/viewmodel/viewmodel_post_create.dart';
import 'package:idear/app/viewmodel/viewmodel_proflie.dart';
import 'package:idear/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.colorMain,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewModelProfile()),
        ChangeNotifierProvider(create: (_) => ViewModelPost()),
        ChangeNotifierProvider(create: (_) => ViewModelPostCreate()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: AppColors.colorWhite),
        debugShowCheckedModeBanner: false,
        home: const ScreenHome(),
      ),
    );
  }
}
