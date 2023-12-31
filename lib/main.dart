import 'package:drivers_app/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child:MaterialApp(
        title: 'Drivers App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:MySplashScreen(),
        debugShowCheckedModeBanner: false,//it removes debug batch

      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  //const MyApp({super.key});
  final Widget? child;

  MyApp({this.child});

  static void restartApp(BuildContext context)
  {
    //Whenever we want to restart the app,we simply call this method
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key=UniqueKey();

  void restartApp(){
    setState(() {
      key=UniqueKey();
    });
  }
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
        key:key,
        child: widget.child!,
    );
  }
}

