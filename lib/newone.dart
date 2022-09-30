
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxproject/counter.dart';
import 'package:mobxproject/widget.dart';
import 'package:provider/provider.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NewHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NewHome> {
  Counter counter = Counter();

  @override
  void didChangeDependencies() async {
    counter = Provider.of<Counter>(context, listen: false);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_) {
              return Column(
                children: [
                  Text(
                    '${counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              );
            }),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customIconButton(
                    buttonIcon: Icons.minimize,
                    buttonColor: Colors.amber,
                    ontap: () {
                      counter.decrement();
                    }),
                const Spacer(),
                customIconButton(
                    buttonIcon: Icons.add,
                    buttonColor: Colors.amber,
                    ontap: () {
                      counter.increment();
                    })
              ],
            ),
            customIconButton(
                buttonIcon: Icons.refresh,
                buttonColor: Colors.red,
                ontap: () {
                  counter.reset();
                }),
            Row(
              children: [
                Observer(builder: (context) {
                  return customTextButton(
                    textTitle: 'Total + Button Pressed',
                    context: context,
                    snackBarText:
                        ('You have pressed + button ${counter.addValue} times'),
                  );
                }),
                Observer(builder: (context) {
                  return Text(
                    '${counter.addValue}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
