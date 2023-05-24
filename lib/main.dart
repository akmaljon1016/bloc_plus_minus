import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/number_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => NumberBloc(),
    child: MaterialApp(
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Plus Minus"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<NumberBloc, NumberState>(
            builder: (context, state) {
              if (state is NumberChange) {
                return Text(state.number.toString());
              } else {
                return Text("pustoy");
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<NumberBloc>(context).add(MinusEvent());
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<NumberBloc>(context).add(PlusEvent());
                },
                child: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
