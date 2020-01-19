import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
 import 'package:image_picker/image_picker.dart';

class UploadFoto extends StatefulWidget {
  @override
  _UploadFotoState createState() => _UploadFotoState();
}

class _UploadFotoState extends State<UploadFoto> {
  File _image;
  String imgBASE64;

   Future getImage() async {
     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
     setState(() {
       _image = image;
       // imgBASE64 = imageB64;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 40, top: 25, bottom: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              "Upload Foto Siswa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              getImage();
            },
            child: Container(
              padding: EdgeInsets.only(top: 10),
              height: 120,
              child: _image == null ? Container(
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.file_upload,
                      size: 50,
                      color: Colors.grey[500],
                    ),
                    Text(
                      "File belum ada",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ) : Image.file(_image),
            ),
          ),
        ],
      ),
    );
  }
}