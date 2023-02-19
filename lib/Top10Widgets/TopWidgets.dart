import 'package:flutter/material.dart';
import 'package:provider_state_management/Top10Widgets/ItemPage.dart';

/*
class TopWidgets extends StatefulWidget {
  const TopWidgets({Key? key}) : super(key: key);

  @override
  State<TopWidgets> createState() => _TopWidgetsState();
}



//How to Add Bottom sheet Model

class _TopWidgetsState extends State<TopWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Open Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context) {
              return Center(
                child: ElevatedButton(child: Text("Close"),onPressed: (){
                  Navigator.pop(context);
                },),
              );

            },
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
              backgroundColor: Colors.indigo.shade100,
              //isScrollControlled: true,
            );
          },
          child: Text(" Open Bottom Sheet "),
        ),
      ),
    );
  }
}


 */
//---------------------------------------------------------------------------------

/*

How To Implement Expansion Widgets

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Expansion Widget"),
      ),
      body: ExpansionTile(
        title: const Text("Users", style: const TextStyle(fontSize: 18) ,),
        children: [
          ListTile(
             title: Text("Lalit Kumar",style: const TextStyle(fontSize: 14),),
            onTap: (){},
          ),

          ListTile(
            title: Text("Kapil Yadav",style: const TextStyle(fontSize: 14),),
            onTap: (){},
          ),
          ListTile(
            title: Text("Chander Shekhar",style: const TextStyle(fontSize: 14),),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

----------------------------------------------------------------------------------------
 */

/*
class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text("Check Box "),
    ),
      body: Center(
        child:Theme(
          data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.blue,
          ),
          child: CheckboxListTile(
            title: const Text("I Agree With Your Term"),
           controlAffinity: ListTileControlAffinity.leading,
           value: isChecked,
            onChanged: (value){
             setState(() {
               isChecked=value!;

             });
            },
            activeColor: Colors.indigo,
            checkColor: Colors.white,
          ),
        ) ,
      ),
    );
  }
}

--------------------------------------------------------------------------------
 */

/*

How to Create AlertDialog in Flutter


class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text("Show Alert Dialog"),
    ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title:const Text("From Techtain Group"),
                content: Text('Let them know what value you can provide. '
                    'The best way to be memorable and make people interested '
                    'is to show how you can benefit them. This is especially'
                    ' true in more formal'),
                backgroundColor: Colors.indigo.shade100,
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("OK")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("CANCEL")),
                ],
              );
            },);
          },
          child:const Text("Show Dialog"),
        ),
      ),
    );
}
}

-------------------------------------------------------------------------------
 */

/*
How to Create DropDown Menu in Flutter

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  List items=["Badaun","Bareilly","Lakhimpur","Lucknow","Kurukshetra","Ambala"];
  String? selectItem="Badaun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text("Drop Down Menu"),
    ),
      body:Center(
        child: SizedBox(
          width: 200,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (e){
              setState(() {
                selectItem=e;
              });

            },
            value: selectItem,
            items:items.map((e) => DropdownMenuItem<String>(
                child: Text(e,style: TextStyle(fontSize: 15),),
              value: e,
            )).toList() ,
          ),
        ),
      ) ,
    );
  }
}
----------------------------------------------------------------------------

 */

/*
---------------------------------------------------------------------------------

How To Implement PageView This is Important Concepts

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  final controller=PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:const Text("Page View"),
          actions: [
            IconButton(onPressed: (){
              //controller.previousPage( duration: const Duration(seconds: 1), curve:Curves.easeInOut);
              controller.animateToPage(0, duration: const Duration(seconds: 1), curve:Curves.easeInOut);
            }, icon:Icon(Icons.keyboard_arrow_left)),
            IconButton(onPressed: (){
              controller.nextPage(duration:const Duration(seconds: 1), curve: Curves.easeInOut);
              //controller.animateToPage(2, duration:const Duration(seconds: 1), curve: Curves.easeInOut);
            }, icon:Icon(Icons.keyboard_arrow_right)),
          ],
    ),
      body: PageView(
        //scrollDirection: Axis.vertical,
        //physics: const NeverScrollableScrollPhysics(),//stop scrolling
        controller: controller,
        onPageChanged: (index){
         print(index);
        },
        children: [
          Container(child: Center(child: Text("Page 1",style: TextStyle(color: Colors.white),)),color: Colors.indigo,),
          Container(child: Center(child: Text("Page 2" ,style: TextStyle(color: Colors.white),)),color: Colors.red,),
          Container(child: Center(child: Text("Page 3" ,style: TextStyle(color: Colors.white),)),color: Colors.green,),
        ],
      ),
    );
  }
}

-----------------------------------------------------------------------------------------------
 */

/*

If You Want to open single Expansion panel at a time then use this syntax.
-----------------------------------------------------------------------------------------

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  static const itemcontent = 'Let them know what value you can provide. '
      'The best way to be memorable and make people interested '
      'is to show how you can benefit them. This is especially'
      ' true in more formal';

  final List<Item> items = [
    Item(header: "Expansion Item 1", body: itemcontent),
    Item(header: "Expansion Item 2", body: itemcontent),
    Item(header: "Expansion Item 3", body: itemcontent),
    Item(header: "Expansion Item 4", body: itemcontent),
    Item(header: "Expansion Item 5", body: itemcontent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Panel"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: items.map((e) {
            return ExpansionPanelRadio(
                canTapOnHeader: true,
                value: e.header, //that is used to identified list uniquely,
                headerBuilder:(context, isExpanded) {
                  return ListTile(
                    title: Text(e.header,style:const  TextStyle(fontSize: 15),),
                  );
                }, body:ListTile(
              title: Text(e.body,style:const  TextStyle(fontSize: 15),),
            ) );
          }).toList(),
        ),
      ) ,
    );
  }
}

class Item {
  final String header;
  final String body;
  Item({required this.header, required this.body});
}

-------------------------------------------------------------------------------------------
 */

/*

When you want to Open two or more Expansion panel at same time then this that syntax;

-----------------------------------------------------------------------------------------------

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  static const itemcontent = 'Let them know what value you can provide. '
      'The best way to be memorable and make people interested '
      'is to show how you can benefit them. This is especially'
      ' true in more formal';

  final List<Item> items = [
    Item(header: "Expansion Item 1", body: itemcontent),
    Item(header: "Expansion Item 2", body: itemcontent),
    Item(header: "Expansion Item 3", body: itemcontent),
    Item(header: "Expansion Item 4", body: itemcontent),
    Item(header: "Expansion Item 5", body: itemcontent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Panel"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            return setState(() {
              items[panelIndex].isExpanded=!isExpanded;
            });
          },
          children: items.map((e) {
            return ExpansionPanel(
              canTapOnHeader: true,
                //value: e.header, //that is used to identified list uniquely,
                isExpanded: e.isExpanded,
                headerBuilder:(context, isExpanded) {
              return ListTile(
                title: Text(e.header,style:const  TextStyle(fontSize: 15),),
              );
            }, body:ListTile(
              title: Text(e.body,style:const  TextStyle(fontSize: 15),),
            ) );
          }).toList(),
        ),
      ) ,
    );
  }
}

class Item {
  final String header;
  final String body;
  bool isExpanded;
  Item({required this.header, required this.body,this.isExpanded=false});
}

--------------------------------------------------------------------------------
 */

/*

All About App Bar in Flutter

------------------------------------------------------------------------------

class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("App Bar"),
        bottom:PreferredSize(
preferredSize: Size.fromHeight(100),
          child: Container(),
        ) ,
        backgroundColor: Colors.indigo.shade200,
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu),
        ),
centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}

-------------------------------------------------------------------------------------
 */

/*
How To create Tab bar in Flutter
---------------------------------------------------------------------------------------


class TopWidget extends StatefulWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Chats",
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: "Status",
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Container(
              color: Colors.indigo,
              child: const Center(
                child: Text("Page 1",style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Text("Page 2",style: TextStyle(color: Colors.white),),
              ),
            ),
            Container(
              color: Colors.deepPurple,
              child: const Center(
                child: Text("Page 3" ,style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

--------------------------------------------------------------------------------------------

This is Only create Pop Up Menu in Flutter

 */class TopWidget extends StatefulWidget {
   const TopWidget({Key? key}) : super(key: key);

   @override
   State<TopWidget> createState() => _TopWidgetState();
 }

 class _TopWidgetState extends State<TopWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:const Text("Pop Up Menu"),
         //centerTitle: true,
         actions: [
           PopupMenuButton<MenuItem>(
             onSelected: (val){
               if(val==MenuItem.item1)
               {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ItemPage(),));
               }
               else if(val==MenuItem.item2)
               {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => ItemPage(),));

               }
               else if(val==MenuItem.item3)
               {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => ItemPage(),));
               }
               else if(val==MenuItem.item4)
               {

               }
             },
             itemBuilder: (context) =>
           [
             const PopupMenuItem(
                 child:Text("Item 1"),
               value:MenuItem.item1 ,

             ),

             const PopupMenuItem(
               child:Text("Item 2"),
               value: MenuItem.item2,
             ),

             const PopupMenuItem(
               child:Text("Item 3"),
               value: MenuItem.item3,
             ),

             const PopupMenuItem(
               child:Text("Item 4"),
               value: MenuItem.item4,

             ),
           ]
             ,),
         ],
       ),
     );
   }
 }
 enum MenuItem
 {
   item1,
   item2,
   item3,
   item4,
 }


