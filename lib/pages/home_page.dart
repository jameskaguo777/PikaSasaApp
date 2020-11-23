import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _frmKey = GlobalKey<FormState>();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[50],
        // padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            _intro(),
            SizedBox(
              height: 20,
            ),
            _search(),
            _smallCardsSLider(),
            _recoTitle(),
          ],
        ),
      ),
    );
  }

  Widget _intro() => Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hello, Michelle',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
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
        ),
      );
  Widget _search() => Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Form(
          key: _frmKey,
          child: TextFormField(
              decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none),
            hintText: 'Search for recipes',
            prefixIcon: Icon(
              Icons.search,
              size: 33,
            ),
            filled: true,
            fillColor: Colors.white,
          )),
        ),
      );

  Widget _smallCardsSLider() => Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        // width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints.tight(Size.fromHeight(100)),
        height: 60,
        child: PageView.builder(
          itemCount: 4,
          pageSnapping: false,
          controller: PageController(
            viewportFraction: 0.26,
          ),
          // onPageChanged: (int index) => setState(() => _index = index),
          dragStartBehavior: DragStartBehavior.start,
          // physics: PageScrollPhysics(parent: ScrollPhysics()),
          itemBuilder: (BuildContext context, int i) {
            return Card(
              elevation: 0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/slides$i.png',
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      );

  Widget _recoTitle() => Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Text(
          'Recommended',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _recoSlider() => Container(
    
  );
}
