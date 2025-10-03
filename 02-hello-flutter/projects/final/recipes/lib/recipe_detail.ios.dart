import 'package:flutter/cupertino.dart';

import 'recipe.dart';

class RecipeDetailIOS extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetailIOS({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetailIOS> createState() {
    return _RecipeDetailIOSState();
  }
}

class _RecipeDetailIOSState extends State<RecipeDetailIOS> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text(widget.recipe.label)),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl), fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(widget.recipe.label, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(12.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '${ingredient.quantity * _sliderVal} '
                      '${ingredient.measure} '
                      '${ingredient.name}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text('${_sliderVal * widget.recipe.servings} servings', style: const TextStyle(fontSize: 16)),
                  CupertinoSlider(
                    min: 1,
                    max: 10,
                    divisions: 9,
                    value: _sliderVal.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderVal = newValue.round();
                      });
                    },
                    activeColor: CupertinoColors.activeGreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
