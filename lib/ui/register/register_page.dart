import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:geinterra_apps/ui/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/loginpage';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  bool _toogle = true;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff297061),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_circle_outlined,
            size: 160.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            // height: 600,
            // margin: EdgeInsets.only(top: 310),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Center(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formKey,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Buat Akun',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Color(0xff297061),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_rounded),
                          labelText: 'Nama Lengkap',
                          labelStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                        validator: (value) {
                          if (value != null && value.length < 4) {
                            return 'Enter at least 4 characters';
                          } else {
                            return null; //form is valid
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android),
                          labelText: 'Phone Number',
                          labelStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                        validator: (phone) {
                          if (phone != null && phone.length < 10) {
                            return 'Enter min. 10 digit';
                          } else {
                            return null; //form is valid
                          }
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),
                          labelText: 'Email',
                          labelStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return 'Enter a valid email';
                          } else {
                            return null; //form is valid
                          }
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _toogle,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_rounded),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _toogle;
                            },
                            icon: Icon(_toogle
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          labelText: 'Password',
                          labelStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.3)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                        validator: (password) {
                          if (password != null && password.length < 5) {
                            return 'Enter min. 5 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final isValidForm = formKey.currentState!.validate();
                          String username = _nameController.text;
                          String email = _emailController.text;

                          if (isValidForm) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                              (route) => false,
                            );
                          }
                        },
                        child: Text('Buat Akun'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff297061),
                          minimumSize: Size(50.0, 50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          textStyle: GoogleFonts.poppins(
                            fontSize: 14.0,
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sudah punya akun?',
                              style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Masuk',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff297061),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
