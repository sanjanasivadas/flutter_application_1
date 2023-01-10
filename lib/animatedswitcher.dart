import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedSwitch());
}

class AnimatedSwitch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home:Animation_Image()
   );
  }
}
class Animation_Image extends StatefulWidget {
  @override
  State<Animation_Image> createState() => _HomeState();
}

class _HomeState extends State<Animation_Image> {
  var index = 0;

  final widgets = [
    Image.network(
      'https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      fit: BoxFit.contain,
      key: Key('1'),
    ),
    Image.network(
      'https://images.unsplash.com/photo-1605140316783-b43dfc1df270?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      fit: BoxFit.contain,
      key: Key('2'),
    ),
    Image.network(
      'https://images.unsplash.com/photo-1616367711519-2e494ce81c82?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      fit: BoxFit.contain,
      key: Key('3'),
    ),
  ];

  //late final AnimatedSwitcherLayoutBuilder layoutBuilder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> value) {
                // return ScaleTransition(scale: value, child: child);
                return RotationTransition(
                  turns: value,
                  child: child,
                );
              },
              child: widgets[index],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (widgets.length == index + 1) {
              index = 0;
            } else
              index += 1;
          });
        },
        child: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
class Basic extends StatefulWidget {
  const Basic({Key? key}) : super(key: key);

  @override
  State<Basic> createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                '$count',
                style: TextStyle(fontSize: 50),
                key: ValueKey(count),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Increase'))
          ],
        ),
      ),
    );
  }
}