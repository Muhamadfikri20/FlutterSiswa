import 'package:flutter/material.dart';
import 'package:simple_slqlite/Form/FormSiswa.dart';
import 'package:simple_slqlite/HomeScreen/ListViewHome.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:simple_slqlite/Widget/FadeRouteBuilder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 300);
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();
  Rect rect;
  void _onTap() async {
    setState(() => rect = RectGetter.getRectFromKey(rectGetterKey));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() =>
      rect = rect.inflate(1.3 * MediaQuery.of(context).size.longestSide));
      Future.delayed(animationDuration + delay, _goToNextPage);
    });
  }

  void _goToNextPage() {
    Navigator.of(context)
        .push(FadeRouteBuilder(page: FormSiswa()))
        .then((_) => setState(() => rect = null));
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar:AppBar(
            title: Text(
              "Selamat Datang"
            ),
          ),
          body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[400],
                        width: 2.0,
                      ),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 7.0,
                        color: Colors.black12,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
//                image: DecorationImage(
//                  image: MemoryImage(backgroundImage),
//                  fit: BoxFit.cover,
//                ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: SiswaList(),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: RectGetter(
            key: rectGetterKey,
            child: FloatingActionButton(
              onPressed: _onTap,
              backgroundColor: Colors.redAccent,
              child: Icon(
                Icons.add,
              ),
            ),
          ),
        ),
        _ripple(),
      ],
    );
  }
  Widget _ripple() {
    if (rect == null) {
      return Container();
    }
    return AnimatedPositioned(
      duration: animationDuration,
      left: rect.left,
      right: MediaQuery.of(context).size.width - rect.right,
      top: rect.top,
      bottom: MediaQuery.of(context).size.height - rect.bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff3d51b4),
        ),
      ),
    );
  }
}
