import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HOmePage(),
    );
  }
}

class HOmePage extends StatelessWidget {

  var addCountry = [
    {
      'name': 'Pakistan',
      'color': Colors.green.shade200
    },
    {
      'name': 'IslamaBad',
      'color': Colors.yellowAccent.shade100
    },
    {
      'name': 'Lahore',
      'color': Colors.white12
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlays'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: (){
                showDialog(context: context, builder: (context){
                  return SimpleDialog(
                    title: Text('Select Country'),
                    children: addCountry.map((country) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        color: country['color'] as Color,
                        child: Center(child: Text(country['name'] as String)),
                      ),
                    ),).toList()
                  );
                });
              }, child: Text('Show')),
        ),
      ),
    );
  }
}


/*AlertDialog(
title: Row(
children: [
Icon(Icons.exit_to_app_rounded),
SizedBox(width: 15,),
Text('Exit'),
],
),
content: Text('Are you sure Want to exit?'),
actions: [
TextButton(onPressed: (){
Navigator.pop(context);
}, child: Text('Yes')),
TextButton(onPressed: (){
Navigator.pop(context);
}, child: Text('No')),
],
);*/