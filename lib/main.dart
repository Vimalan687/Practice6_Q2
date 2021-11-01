import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice6_ii/Cubit_string.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => Capitalize(),
child: MyHomePage(
            title: 'Flutter Capitalize'
          ),
      )
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textfield1 = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
                centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
               TextField(
              controller: _textfield1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Provide the input that u would like to capitalize'),
            ),
            ElevatedButton(
              onPressed: () => {
                // print(_textValue.text.toUpperCase()), 
                context.read<Capitalize>().capatalise(_textfield1.text)
              },
              child: Text('Convert Message')
            ),
             BlocBuilder<Capitalize,String>(
              builder: (context, state){
                return Text('$state');
              }
            ),
            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
