import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Favourite/FavouriteProvider.dart';

class MyFavouriteItems extends StatefulWidget {
  const MyFavouriteItems({Key? key}) : super(key: key);

  @override
  State<MyFavouriteItems> createState() => _MyFavouriteItemsState();
}

class _MyFavouriteItemsState extends State<MyFavouriteItems> {
  @override
  Widget build(BuildContext context) {
    print("Build 1");
    final provider=Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Collection"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Expanded(
              child:ListView.builder(
                itemCount: provider.selectedItem.length,
                itemBuilder: (context, index){
                  return Consumer<FavouriteProvider>(builder: (context, value, child) {
                    return Card(
                      color: Colors.indigo.shade100,
                      child: ListTile(
                        title: Text("User Number $index"),
                        trailing:Icon(Icons.favorite,color: Colors.pink,),
                        onTap: (){

                        },
                      ),
                    );

                  },) ;
                },)
          ),
        ]),
      ),
    );
  }
  }

