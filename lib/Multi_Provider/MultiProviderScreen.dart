import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Favourite/FavouriteScreen.dart';
import 'package:provider_state_management/Multi_Provider/MultiProviderCode.dart';

class MultiProviderScreen extends StatefulWidget {
  const MultiProviderScreen({Key? key}) : super(key: key);

  @override
  State<MultiProviderScreen> createState() => _MultiProviderScreenState();
}

class _MultiProviderScreenState extends State<MultiProviderScreen> {

  @override
  void deactivate() {
    // TODO: implement deactivate
  }
  @override
  Widget build(BuildContext context) {
    print('Re-Build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Provider"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen(),));

        },
        child: Icon(Icons.add),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.indigo.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
           Consumer<MultiProviderCode>(builder: (context, amount, child) {
             return  Slider(
               min: 0,
               max: 1,
               divisions: 100,
               value:amount.value ,
               inactiveColor: Colors.deepOrange,
               onChanged: (value) {
                Provider.of<MultiProviderCode>(context,listen: false).setValue(value);
               },

             );
           },),
            SizedBox(height: 50,),
            Consumer<MultiProviderCode>(builder: (context, amonut, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.green.withOpacity(amonut.value),
                      child: Center(child: const Text("Box 1",style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.only(right: 5,left: 5),
                      color: Colors.red.withOpacity(amonut.value),
                      child: Center(child: const Text("Box 1",style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ],
              );
            },)
          ],
        ),
      ),
    );
  }
}
