import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RequestDonationScreen extends StatefulWidget {
  @override
  _RequestDonationScreenState createState() => _RequestDonationScreenState();
}


class _RequestDonationScreenState extends State<RequestDonationScreen> {
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
                      child: Image.asset("assets/images/ihtiyacard2.png"),
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
                    hintStyle:TextStyle(color: Colors.grey),
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
                    prefixIcon: Icon(Iconsax.call_add),
                  ),
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: screenWidth / 1.2,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Eşya adını girin',
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
                    prefixIcon: Icon(Iconsax.box),
                  ),
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
          
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "GÖNDER",
                    style: TextStyle(
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
