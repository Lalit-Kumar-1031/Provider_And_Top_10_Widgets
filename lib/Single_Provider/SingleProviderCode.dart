/*
How to Implement Provider State Management in Flutter ??

set state method  rebuild the build method whenever set state method is called and also rebuild all widget inside the build method.
but if you want to rebuild particular widget or change the state of a widget then you can use state management technique
that are basically use for rebuild a particular widget not all widget inside the build method.

How to implement Provider ??

1.add provider dependency on pub.dev website

2.Implement ChangeNotifierProvider in main.dart

----------------------------------------------------------
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

-------------------------------------------------------------------------

3.Implement Data Provider.of (jaha click krne pr UI change hoga waha likha jayega like button onpressed)

mainly this is written in button onpressed method

 Provider.of<SingleProviderCode>(context,listen: false).setcount();

 ---------------------------------------------------------------------------------

 4.Consumer builder ( waha likha jayega jaha ka UI change krna hai )


 Consumer<SingleProviderCode>(
            builder: (context, value, child) {
              return Text(
                "${value.count.toString()}",
                style: TextStyle(fontSize: 25),
              );
            },
          ),


------------------------------------------------------------------------------------------
5.Provider Method code or basic structure given below


 */

import 'package:flutter/material.dart';

class SingleProviderCode extends ChangeNotifier
{
  int _count=0;

  int get count=>_count;

  void setcount()
  {
    _count++;
    notifyListeners();
  }

}