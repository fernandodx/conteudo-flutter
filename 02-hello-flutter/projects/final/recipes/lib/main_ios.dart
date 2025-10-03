import 'package:flutter/cupertino.dart';
import 'package:recipes/recipe_detail.ios.dart';

import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Recipe Calculator',
      theme: CupertinoThemeData(primaryColor: CupertinoColors.activeBlue),
      home: MyHomePage(title: 'Recipe Calculator iOS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text(widget.title)),
      child: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples2.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return RecipeDetailIOS(recipe: Recipe.samples2[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples2[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [BoxShadow(color: CupertinoColors.systemGrey4, blurRadius: 4, offset: Offset(2, 2))],
      ),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(height: 14.0),
          Text(
            recipe.label,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, fontFamily: 'San Francisco'),
          ),
        ],
      ),
    );
  }
}
