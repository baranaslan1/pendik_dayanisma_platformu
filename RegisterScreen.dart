import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Data/Services/UserService.dart';
import '../../constants.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  PageController _pgController = new PageController();

  Future<void> signup(BuildContext context) async {
    final userService = UserService();

    // throw "Kontrolleri yap";
    print("object");
    if (await userService.SignUp(_emailController.text, _passwordController.text, _usernameController.text, _phoneController.text, _nameController.text, _surnameController.text)) {
      Navigator.pop(context);
    } else {
      const snackBar = SnackBar(content: Text("Bir şeyler ters gitti!"), backgroundColor: Colors.red,);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: PageView(
          controller: _pgController,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight / 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SvgPicture.asset(
                      "assets/images/dayanismalogo.svg",
                      width: 150,
                    ),
                  ),
                  SizedBox(height: screenHeight / 30),
                  Text(
                    "Hoşgeldiniz",
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  Text(
                    "Hesap bilgilerini doldur",
                    style:  TextStyle(
                        color: Colors.white,
                      ),
                  ),
                  SizedBox(height: screenHeight / 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'E-posta',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 50),
                        TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Telefon Numarası',
                            labelStyle:  TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 50),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Şifre',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 50),
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            labelText: 'Şifreyi Onayla',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),

                          obscureText: true,
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 20),
                        ElevatedButton(
                          onPressed: () {
                            _pgController.animateToPage(1, duration: Duration(milliseconds: 800), curve: Curves.fastEaseInToSlowEaseOut);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15,
                            ),
                            child: Text(
                              'DEVAM ET',
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight / 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight / 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SvgPicture.asset(
                      "assets/images/dayanismalogo.svg",
                      width: 150,
                    ),
                  ),
                  SizedBox(height: screenHeight / 30),
                  Text(
                    "Az kaldı",
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Kendini tanıt ve kayıt ol",
                    style:  TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: screenHeight / 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Kullanıcı Adın',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 50),
                        TextFormField(
                          controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Adın',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 50),
                        TextFormField(
                          controller: _surnameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Soyadın',
                            labelStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                        ),
                        SizedBox(height: screenHeight / 20),
                        ElevatedButton(
                          onPressed: () {
                            signup(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15,
                            ),
                            child: Text(
                              'KAYIT OL',
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight / 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
