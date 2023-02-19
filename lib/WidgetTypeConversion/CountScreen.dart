import 'package:flutter/material.dart';


/*
class CountScreen extends StatelessWidget {
   CountScreen({Key? key}) : super(key: key);

ValueNotifier<int> _counter=ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print("Build Stateless");
    return Scaffold(
      appBar: AppBar(
        title: Text("State Consersion"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable:_counter ,
          builder: (context, value, child) {
            return Text(_counter.value.toString(),style: TextStyle(fontSize: 35),);
          },
        ),
      ),
    );
  }
}

----------------------------------------------------------------------------------------
 */


class CountScreen extends StatelessWidget {
  CountScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _counter=ValueNotifier<int>(0);
  ValueNotifier <bool> toggle=ValueNotifier<bool>(true);
  ValueNotifier color=ValueNotifier(Colors.red);

  @override
  Widget build(BuildContext context) {
    print("Build Stateless");
    return Scaffold(
      appBar: AppBar(
        title: Text("State Consersion"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.7,
                child: ValueListenableBuilder(
                  builder: (context, value, child) {
                    return TextFormField(
                      obscureText: toggle.value,
                      decoration: InputDecoration(
                        hintText: "Enter Password ",
                        suffixIcon: IconButton(onPressed: (){

                          toggle.value=!toggle.value;

                        },icon:toggle.value?Icon(Icons.visibility_off): Icon(Icons.visibility),),
                        border: OutlineInputBorder(),
                      ),
                    );
                  },
                  valueListenable: toggle,
                )
              ),
              SizedBox(height: 30,),
              Center(
                child: ValueListenableBuilder(
                  valueListenable:_counter ,
                  builder: (context, value, child) {
                    return Text(_counter.value.toString(),style: TextStyle(fontSize: 35),);
                  },
                ),
              ),
              SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  if(color.value==Colors.red)
                    {
                      color.value=Colors.green;
                    }
                  else
                      {
                       color.value=Colors.red;
                      }

                },
                child: ValueListenableBuilder(
                  valueListenable: color,
                  builder: (context, value, child) {
                    return  Container(
                    height: 200,
                    width: 200,
                    color:color.value,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
