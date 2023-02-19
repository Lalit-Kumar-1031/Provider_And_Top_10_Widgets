import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/ChangeTheme/ThemeProvider.dart';
import 'package:provider_state_management/WidgetTypeConversion/CountScreen.dart';

class ThemeChangerScreen extends StatefulWidget {
  const ThemeChangerScreen({Key? key}) : super(key: key);

  @override
  State<ThemeChangerScreen> createState() => _ThemeChangerScreenState();
}

class _ThemeChangerScreenState extends State<ThemeChangerScreen> {
  @override
  Widget build(BuildContext context) {
   final provider= Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Mode"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => CountScreen(),));
        },
        child:Icon(Icons.add),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light Mode"),
              value:ThemeMode.light,
              groupValue: provider.thememode,
              onChanged: provider.setTheme
          ),
          RadioListTile<ThemeMode>(
            title:const  Text("Dark Mode"),
              value:ThemeMode.dark,
              groupValue: provider.thememode,
              onChanged: provider.setTheme
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Mode"),
              value:ThemeMode.system,
              groupValue: provider.thememode,
              onChanged: provider.setTheme
          ),
        ],
      ),
    );
  }
}
