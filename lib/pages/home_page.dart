import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _frmKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[50],
        padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            _intro(),
            SizedBox(
              height: 20,
            ),
            _search()
          ],
        ),
      ),
    );
  }

  Widget _intro() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hello, Michelle',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://d2p8jjwwnx090z.cloudfront.net/377/068/540/910003019-1r1kjq5-gtmq2ek3jpsmpcf/original/file.jpg',
              fit: BoxFit.cover,
              width: 43,
              height: 43,
            ),
          )
        ],
      );
  Widget _search() => Form(
        key: _frmKey,
        child: TextFormField(
            decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none),
          hintText: 'Search for recipe',
          prefixIcon: Icon(
            Icons.search,
            size: 33,
          ),
          filled: true,
          fillColor: Colors.white,
        )),
      );
}
