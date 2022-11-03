import 'package:blocapp/counter_app/counter_cubit.dart';
import 'package:blocapp/counter_app/homepage.dart';
import 'package:blocapp/weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:blocapp/weather_app/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 900),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return BlocProvider(
            create: (context) => WeatherCubit(WeatherService()),
            child: MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: HomePage(),
              debugShowCheckedModeBanner: false,
            ),
          );
        });
  }
}
