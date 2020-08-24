import 'package:coursehub/ui/account/account.login.dart';
import 'package:coursehub/ui/account/account.static.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  final _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    final size = _width * 0.25;
    const double factor = 0.075;
    return Scaffold(
      backgroundColor: Color(0xFFEBEAF2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                right: -_width * factor,
                top: -5,
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: -_width * factor,
                top: _height * 0.12,
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: _width * factor,
                top: _height * 0.3,
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: -_width * factor,
                top: _height * 0.5,
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: -_width * factor,
                top: _height * 0.5,
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: _height,
                width: _width,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          fit: BoxFit.fitHeight,
                          height: 100,
                        ),
                      ),
                    ),
                    Text(
                      "Create New Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                padding: containerPadding,
                                decoration: containerDecoration,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Full Name",
                                    hintText: "Full Name Required",
                                    labelStyle: labelStyle,
                                    hintStyle: hintStyle,
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                padding: containerPadding,
                                decoration: containerDecoration,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Email Address",
                                    hintText: "Email Required",
                                    labelStyle: labelStyle,
                                    hintStyle: hintStyle,
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                padding: containerPadding,
                                decoration: containerDecoration,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Phone Number",
                                    hintText: "Phone Number With Country Code",
                                    labelStyle: labelStyle,
                                    hintStyle: hintStyle,
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Container(
                                padding: containerPadding,
                                decoration: containerDecoration,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Password Required",
                                    labelStyle: labelStyle,
                                    hintStyle: hintStyle,
                                    border: InputBorder.none,
                                  ),
                                  obscureText: true,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Container(
                                color: coursehub_blue,
                                alignment: Alignment.center,
                                child: MaterialButton(
                                  onPressed: null,
                                  child: Text(
                                    "CREATE NEW ACCOUNT",
                                    style: blueButtonTextStyle,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => LogIn(),
                                  ),
                                ),
                                child: Text(
                                  "LOG IN",
                                  style: blueTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
