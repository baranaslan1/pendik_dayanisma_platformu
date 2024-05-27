import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}


class _DonateScreenState extends State<DonateScreen> {

  final picker = ImagePicker();
  List<File> imagesList = [];

  Future pickImageFromGallery() async {
    XFile? xfilePick = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (xfilePick != null) {
        imagesList.add(File(xfilePick.path));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Bir şey seçilmedi"),));
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(

            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20,left: 30),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,color: Colors.green[900],),
                      Text("Geri",style: TextStyle(color: Colors.green[900]),),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: screenWidth/1.2,
                    child: ClipRRect(
                      child: Image.asset("assets/images/ihtiyacard4.png"),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ad ve soyad girin',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Iconsax.personalcard),
                  ),
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Adres bilgileri girin',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Iconsax.location_add),
                  ),
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Telefon numarası girin',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Iconsax.call_add),
                  ),
                  style:  TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Ürün Adı',
                    hintStyle:  TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Iconsax.box),
                  ),
                  style:  TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Açıklama',
                    hintStyle:  TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Iconsax.message_text),
                  ),
                  style:  TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 5.0,
                spacing: 5.0,
                children: [
                  for(int i = 0; i < imagesList.length ; i++)
                    Stack(

                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: FileImage(
                                      imagesList[i]
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.cancel, color: Colors.grey[900],),
                          onPressed: () {
                            setState(() {
                              imagesList.removeAt(i);
                            });
                          },
                        )
                      ],
                    ),
                  GestureDetector(
                    onTap: () {
                      pickImageFromGallery();
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black87, width: 3)
                      ),
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          size: 64,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
          
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "GÖNDER",
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                  ),
                  width: screenWidth / 1.2,
                  height: screenHeight / 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green[900],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
