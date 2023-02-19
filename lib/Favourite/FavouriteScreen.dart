import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/ChangeTheme/ThemeChangerScreen.dart';
import 'package:provider_state_management/Favourite/FavouriteProvider.dart';
import 'package:provider_state_management/Favourite/MyFavouriteItems.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  //List selected = [];
  @override
  Widget build(BuildContext context) {
    print("Build 1");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App Screen"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavouriteItems(),));
          }, icon: Icon(Icons.favorite,color: Colors.white,)),
          SizedBox(width: 10,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) =>ThemeChangerScreen()));
        },
        child: Icon(Icons.add),
      ),

      body: Container(
        child: Column(children: [
          Expanded(
            child:ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
              return Consumer<FavouriteProvider>(builder: (context, value, child) {
                return Card(
                  color: Colors.indigo.shade100,
                  child: ListTile(
                    title: Text("User Number $index"),
                    trailing:value.selectedItem.contains(index)?Icon(Icons.favorite,color: Colors.pink,):Icon(Icons.favorite_border_outlined,color: Colors.white,),
                    onTap: (){
                      if(value.selectedItem.contains(index)) {

                        //you can  write any one in both 1st is
                       value.RemoveItem(index);

                       //2nd is
                       //Provider.of<FavouriteProvider>(context, listen: false)
                           //.RemoveItem(index);


                      }
                      else
                        {
                          //you can  write any one in both 1st is
                          value.AddItem(index);

                          //2nd
                         // Provider.of<FavouriteProvider>(context, listen: false)
                             // .AddItem(index);
                        }
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
