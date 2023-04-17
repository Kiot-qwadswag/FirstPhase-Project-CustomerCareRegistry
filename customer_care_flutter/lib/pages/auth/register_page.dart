import 'package:customer_care_flutter/pages/auth/login_page.dart';
import 'package:customer_care_flutter/utils/constants.dart';
import 'package:customer_care_flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: Constants().backgroundColors)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "USER SIGNUP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Full Name",
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Email",
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Phone Number",
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: !isChanged,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Password",
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: !isChanged,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: "Enter Password",
                        focusColor: Colors.white),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isChanged,
                          fillColor: MaterialStatePropertyAll(Colors.white),
                          checkColor: Colors.black,
                          onChanged: (bool? value) {
                            setState(() {
                              isChanged = value!;
                              print(isChanged);
                            });
                          }),
                      Text(
                        "Show Password",
                        style: TextStyle(fontSize: 15),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
