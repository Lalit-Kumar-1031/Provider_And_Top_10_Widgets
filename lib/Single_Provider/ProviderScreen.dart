import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Multi_Provider/MultiProviderScreen.dart';
import 'package:provider_state_management/Single_Provider/SingleProviderCode.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final increasecount=Provider.of<SingleProviderCode>(context,listen: false);
    Timer.periodic(Duration(seconds: 1),(timer){
      increasecount.setcount();
    });
  }
  @override
  Widget build(BuildContext context) {
    print("e-Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider State Management"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<SingleProviderCode>(context, listen: false).setcount();
          Navigator.push(context, MaterialPageRoute(builder: (context) => MultiProviderScreen(),));
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.indigo.shade100,
        child: Center(
          child: Consumer<SingleProviderCode>(
            builder: (context, value, child) {
              return Text(
                "${value.count.toString()}",
                style: TextStyle(fontSize: 25),
              );
            },
          ),
        ),
      ),
    );
  }
}
