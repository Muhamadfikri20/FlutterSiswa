
import 'package:flutter/material.dart';


class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormWidget(),
    );
  }
}

class FormWidget extends StatelessWidget {
  String street;
  String zip;
  static final addFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xff0087BA),
              gradient: LinearGradient(
                colors: [
                  Color(0xffDADBDB),
                  Color(0xffFFFFFF),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Form(
                        key: addFormKey,
                        child: Container(
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(
                                  top: 30.0,
                                  right: 40.0,
                                  left: 40.0,
                                ),
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  onSaved: (value) {
                                    this.street = value;
                                  },
                                  validator: formValidator,
                                  decoration: InputDecoration(
                                    labelText: 'Nama',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff3d51b4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 40.0, left: 40.0),
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  onSaved: (value) {
                                    this.zip = value;
                                  },
                                  validator: formValidator,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff3d51b4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),



                              Container(
                                padding: EdgeInsets.only(
                                  top: 30.0,
                                  right: 40.0,
                                  left: 40.0,
                                ),
                                alignment: Alignment.centerLeft,
                                child: Material(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Color(0xff3d51b4),
                                  shadowColor: Colors.blue,
                                  elevation: 5.0,
                                  child: MaterialButton(
                                    minWidth: 400.0,
                                    height: 42.0,
                                    onPressed: () {
//                                      final form = addFormKey.currentState;
//                                      if (form.validate()) {
//                                        form.save();
//
//                                      }
                                      Navigator.of(context).pushNamed('/homeScreen');
                                      Scaffold.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Total telah disalin'),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 40),
                                    child: FlatButton(
                                      child: Text(
                                        "Daftar disini",
                                        style: TextStyle(
                                          color: Color(0xff3d51b4),
                                          fontSize: 12,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pushNamed('/register');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  String formValidator(String value) {
    if (value.isEmpty) {
      return "Mohon isi data";
    }
  }
}