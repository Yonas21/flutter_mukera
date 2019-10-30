import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mukera/widgets/navigation.dart';

class ToDo {
  final String title;
  final String description;

  ToDo(this.title, this.description);
}

final todos = List<ToDo>
.generate(
  15, (i) => ToDo( 'ToDo $i', 'A description of what needs to be done for Todo $i')
  
  );

void main(){
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
    )
  );
}





class ListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/fiker.jpg'),
            ),
            title: Text(todos[index].title),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SecondRoute(todo: todos[index])
              ));
            },
          );
        },
      ),
    );
  }
}


Widget drawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero, children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/fiker.jpg'),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        'Fiker',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 20,
                    ),
                    Icon(Icons.edit, color: Colors.white,)
                  ],
                ),
                decoration: BoxDecoration(color: Colors.black87),
              ),
              ListTile(
                leading: Icon(Icons.directions_run),
                title: Text('Premier League'),
                onTap: (){print('item1 clicked');},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('La Liga'),
                onTap: (){print('item1 clicked');},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit Favorite'),
                onTap: (){print('item1 clicked');},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: (){print('item1 clicked');},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contacts'),
                onTap: (){print('item1 clicked');},
              ),
              ListTile(
                leading: Icon(Icons.settings_brightness),
                title: Text('Dark Mode'),
                onTap: (){
                return new  MaterialApp(
                   darkTheme: ThemeData(
                     brightness: Brightness.dark
                   ),
                 );
                },
              ),
              Divider(),
            ])
);




class MyApp extends StatelessWidget {

  final List<ToDo> todos;

  MyApp({Key key, @required this.todos}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            drawer: drawer,
            appBar: AppBar(
              title: Text('First route'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: TopNavigation()
                  ),
                  Expanded(child: ListBuilder()),
              ]),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text('home')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.new_releases), title: Text('News')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.table_chart), title: Text('Tables'),
                    ),
                    
              ],
              selectedItemColor: Colors.blueAccent,
            ));
  }
}



class SecondRoute extends StatelessWidget {
  final ToDo todo;

  SecondRoute({Key key, @required this.todo}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(todo.description),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
