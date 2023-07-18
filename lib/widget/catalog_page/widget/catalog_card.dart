import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogCardWidget extends StatelessWidget {
  const CatalogCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Закругляем углы карточки
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  children: [
                    Image.network(
                      'https://wp-s.ru/wallpapers/10/9/463314880930454/krasivyj-zakat-lesnoe-ozero-gory.jpg',
                      width: 10000,
                      height: 10000,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: IconButton(
                          icon: Icon(CupertinoIcons.heart),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: ListTile(
                  title: Text('информация'),
                  trailing: IconButton.filled(
                    color: Theme.of(context).colorScheme.background,
                    icon: Icon(CupertinoIcons.add,),
                    onPressed: () {
                      //todo реализовать нажатие лайка
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
