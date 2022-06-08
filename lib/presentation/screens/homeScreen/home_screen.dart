import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/helper/flavors/app_config.dart';
import 'package:flutter_base_project/presentation/screens/homeScreen/home_provider.dart';
import 'package:flutter_base_project/presentation/widgets/widget_text_view.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late HomeProvider _provider;

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter base project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextView(
                text: "URL", textStyle: Theme.of(context).textTheme.headline4),
            TextView(
                text: AppConfig.of(context)?.baseUrl ?? "",
                textStyle: Theme.of(context).textTheme.headline4),
            const SizedBox(
              height: 8,
            ),
            TextView(
                text: AppConfig.of(context)?.flavorName ?? "",
                textStyle: Theme.of(context).textTheme.headline3),
            const SizedBox(
              height: 8,
            ),
            TextView(
                text: _provider.count.toString(),
                textStyle: Theme.of(context).textTheme.headline1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _provider.setCount(_provider.count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
