import 'package:flutter/material.dart';
import 'package:neumorphic_loader/neumorphic_loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Example App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neumorphic Loader'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: isLoading
              ? const NeumorphicLoader(
                  size: 75,
                  borderRadius: 10,
                  blurValue: 53,
                  borderColor: Colors.amber,
                  loaderColor: Colors.amber,
                )
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoading = true;
                    });
                    Future.delayed(const Duration(seconds: 3)).then((value) {
                      setState(() {
                        isLoading = false;
                      });
                    });
                  },
                  child: const Text('Show loader'),
                ),
        ),
      ),
    );
  }
}
