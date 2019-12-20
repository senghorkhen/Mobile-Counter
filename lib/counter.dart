import 'package:flutter/material.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  int _increament = 0;
  Image _image;
  void add() {
    setState(() {
      _increament++;
      switch (_increament) {
        case 5:
          _image = Image.network(
              "https://images-na.ssl-images-amazon.com/images/I/516zbxMGm7L.jpg");
          break;
        case 10:
          _image = Image.network(
              "https://i.pinimg.com/originals/ee/fb/39/eefb393049425efb73ef2796249b9c6e.jpg");
          break;
        case 15:
          _image = Image.network(
              "https://images-na.ssl-images-amazon.com/images/I/41FLYvplIDL.jpg");
          break;
           case 20:
          _image = Image.network(
              "https://image-tb.vova.com/image/500_500/filler/f9/6d/16376346cd9d3173424988914627f96d.jpg?format=webp");
          break;
      }
    });
  }

  void remove() {
    setState(() {
      _increament--;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // tom lak mh kram tv kandal
        children: <Widget>[
          Container(
            child: _image,
          ),
          Text(
            "${_increament}",
            style: TextStyle(fontSize: 70.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  add();
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  remove();
                },
                backgroundColor: Colors.red,
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
