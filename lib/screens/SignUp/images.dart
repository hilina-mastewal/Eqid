import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 380,
        height: 300,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 1.0,
            crossAxisCount: 5,
          ),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0XFF12D7A7),
                    image: DecorationImage(
                        image: AssetImage("images/avatar/twelve.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(60)),
              ),
            ));
          },
        ));
  }
}

class PhotoItem {
  final String myimage;
  PhotoItem(this.myimage);
}

final List<PhotoItem> _items = [
  PhotoItem('images/avatar/1.jpg'),
  PhotoItem('images/avatar/2.jpg'),
  PhotoItem('images/avatar/3.jpg'),
  PhotoItem('images/avatar/4.jpg'),
  PhotoItem('images/avatar/5.jpg'),
  PhotoItem('images/avatar/6.jpg'),
  PhotoItem('images/avatar/7.jpg'),
  PhotoItem('images/avatar/8.jpg'),
  PhotoItem('images/avatar/9.jpg'),
  PhotoItem('images/avatar/10.jpg'),
  PhotoItem('images/avatar/11.jpg'),
  PhotoItem('images/avatar/12.jpg'),
  PhotoItem('images/avatar/13.jpg'),
  PhotoItem('images/avatar/14.jpg'),
  PhotoItem('images/avatar/15.jpg'),
];
