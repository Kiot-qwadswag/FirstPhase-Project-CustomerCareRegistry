import 'package:customer_care_flutter/pages/auth/login_page.dart';
import 'package:customer_care_flutter/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:customer_care_flutter/utils/constants.dart';

class Appbar extends StatefulWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 55);
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Constants().navbarColor,
      title: Row(children: [
        IconButton(
          icon: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
              child: Image.asset("assets/logo.png")),
          highlightColor: Colors.white,
          onPressed: () {},
        ),
        Text("CUSTOMER CARE")
      ]),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              "LOGIN",
              selectionColor: Colors.blue,
              style: TextStyle(color: Color.fromARGB(255, 95, 76, 76)),
            )),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: Text(
              "SIGNUP",
              selectionColor: Colors.blueAccent,
              style: TextStyle(color: Color.fromARGB(255, 95, 76, 76)),
            )),
      ],
    );
  }
}
