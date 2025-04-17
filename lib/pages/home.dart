import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

List toDoList = [];
String? usersDeal;

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          Icons.today_rounded,
          color: Colors.white,
          size: 45,
          ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            
            padding: EdgeInsets.fromLTRB(100, 50, 100, 50),
            child: Text(
              'Wish List',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 35,
                color: Colors.black45,
              
              ),
              ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (BuildContext context, int index){
                return Dismissible(
                  key: Key(toDoList[index]), 
                  child: Card(
                    child: ListTile(
                      title: Text(toDoList[index],),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete_sweep_rounded,
                          color: Colors.blueGrey,
                          ), 
                        onPressed: () { 
                          setState(() {
                            toDoList.removeAt(index);
                          });
                         },),
                  ),
                ),
                
                onDismissed: (direction) {
                  setState(() {
                    toDoList.removeAt(index);
                  });
                },
            
                );
              },
              
            
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (BuildContext context){
            return AlertDialog(
              title: Text('Add'),
              content: TextField(
                onChanged: (String value){
                  usersDeal = value;
                },
              ),

              actions: [
                ElevatedButton(
                 onPressed: () {
                    if (usersDeal != null && usersDeal!.trim().isNotEmpty) {
                        setState(() {
                           toDoList.add(usersDeal!);
                         });
                    Navigator.of(context).pop();
                     }
                  },
                child:Text('Add')
                )
              ],

            );
            },
          );
      },
      child: Icon(
        Icons.add,
        color: Colors.white,
       
        ),
      ),
       
    );
  }
}