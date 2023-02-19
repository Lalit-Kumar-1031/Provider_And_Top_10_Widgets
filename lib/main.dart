import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/ChangeTheme/ThemeProvider.dart';
import 'package:provider_state_management/Favourite/FavouriteProvider.dart';
import 'package:provider_state_management/Favourite/FavouriteScreen.dart';
import 'package:provider_state_management/Multi_Provider/MultiProviderCode.dart';
import 'package:provider_state_management/Single_Provider/ProviderScreen.dart';
import 'package:provider_state_management/Single_Provider/SingleProviderCode.dart';
import 'package:provider_state_management/Top10Widgets/TopWidgets.dart';

/*
This is only for Single Provider

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create:(context)=> SingleProviderCode(),
      child:MaterialApp(
        title: "Provider",
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: ProviderScreen(),
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
      ),
    );
  }
}
---------------------------------------------------------------------------------------------------------------------------------------------
 */


/*

This is only for MultiProvider  and Favourite Screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider(create:(context)=> SingleProviderCode(),),
        ChangeNotifierProvider(create: (context)=>MultiProviderCode()),
        ChangeNotifierProvider(create: (context)=>FavouriteProvider()),
      ],
      child:MaterialApp(
        title: "Provider",
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        home: ProviderScreen(),
        //home: FavouriteScreen(),
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
      ),
    );
  }
}

-------------------------------------------------------------------------------------------------------
 */


/*
## This is Only for Theme Change using provider

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>SingleProviderCode()),
          ChangeNotifierProvider(create: (context) => MultiProviderCode(),),
          ChangeNotifierProvider(create: (context) => FavouriteProvider(),),
          ChangeNotifierProvider(create: (context) => ThemeProvider(),),
    ],
      child: Builder(builder: (context) {
       final themeprovider= Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: "Theme Mode",
          debugShowCheckedModeBanner: false,
          themeMode:themeprovider.thememode ,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
                primarySwatch: Colors.indigo,
            appBarTheme: AppBarTheme(
              color: Colors.indigo.shade300
            ),
            iconTheme: IconThemeData(color: Colors.red),

          ),
          home: ProviderScreen(),
        );
      },),
    );
  }
}

-----------------------------------------------------------------------------------
 */

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>SingleProviderCode()),
        ChangeNotifierProvider(create: (context) => MultiProviderCode(),),
        ChangeNotifierProvider(create: (context) => FavouriteProvider(),),
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ],
      child: Builder(builder: (context) {
        final themeprovider= Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: "Theme Mode",
          debugShowCheckedModeBanner: false,
          themeMode:themeprovider.thememode ,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.indigo,
            appBarTheme: AppBarTheme(
                color: Colors.indigo.shade300
            ),
            iconTheme: IconThemeData(color: Colors.red),

          ),
          //home: ProviderScreen(),
          home: TopWidget(),
        );
      },),
    );
  }
}