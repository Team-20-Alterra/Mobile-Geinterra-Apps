import 'package:flutter/material.dart';
import 'widgets.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: Color(0xff434343),
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Color(0xff434343),
            ),
            hintText: "Password",
            hintStyle: TextStyle(fontFamily: 'OpenSans'),
            suffixIcon: Icon(
              Icons.visibility,
              color: Color(0xff434343),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
