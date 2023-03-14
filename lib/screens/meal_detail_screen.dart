import 'package:app_03/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  final Function(Meal) onToggleFavorite;
  final bool Function(Meal) inFavorite;

  const MealDetailScreen(this.onToggleFavorite, this.inFavorite);

  _titleContainers(title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.redAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 150,
            ),
            SizedBox(
              height: 10,
            ),
            _titleContainers('Ingredientes'),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              height: 180,
              child: ListView(
                children: meal.ingredients
                    .map(
                      (ingredient) => Container(
                        width: double.infinity,
                        // alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        child: Card(
                          color: Theme.of(context).secondaryHeaderColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            child: Text(
                              '- $ingredient',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _titleContainers('Como Fazer:'),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              height: 200,
              child: ListView(
                children: meal.steps.map((ingredient) {
                  var index = meal.steps.indexOf(ingredient) + 1;

                  return Container(
                    width: double.infinity,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          '$index',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(
                        '$ingredient',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onToggleFavorite(meal);
        },
        child: Icon(
          inFavorite(meal) ? Icons.favorite : Icons.favorite_border,
          size: 30,
          color: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        splashColor: Colors.white,
        elevation: 3,
      ),
    );
  }
}
