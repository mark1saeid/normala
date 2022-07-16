import 'package:appointment/app/view_model/home_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/views/nav.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(MultiBlocProvider(providers: [
    BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
    )
  ], child:EasyLocalization(
      supportedLocales:const [
         Locale('en'),  Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('ar'),
      child: const MyApp()
  ), ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //makeAppointment(appointments[1]);

    // getAppointmentDetails("0").then((s) => print(jsonEncode(s)));
   // print('home.search'.tr());

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      debugShowCheckedModeBanner: false,
      title: 'Appointment',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Nav(
        menuScreenContext: context,
      ),
    );
  }
}
