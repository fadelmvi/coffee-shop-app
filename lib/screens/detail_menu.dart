import 'package:coffee_shop_app/models/menu.dart';
import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {
  final Menu menu;

  const DetailMenu({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  const Text(
                    'Detail',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  FavoriteButton(
                    menu: menu,
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Image.asset(menu.imageAssets),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                menu.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 30),
              child: Text(
                menu.caption,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9B9B)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      '4.8',
                      style: TextStyle(fontSize: 16, color: Color(0xFF2F2D2C)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: const Divider(
                color: Color(0xFFEAEAEA),
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2F2D2C)),
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: const TextStyle(color: Color(0xFF9B9B9B)),
                        text: menu.description),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  final Menu menu;
  const FavoriteButton({Key? key, required this.menu}) : super(key: key);

  @override
  _FavoriteButton createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            widget.menu.isFavorite = !widget.menu.isFavorite;
          });
        },
        icon: Icon(
          widget.menu.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
