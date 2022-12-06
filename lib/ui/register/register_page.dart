import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/register/model/api/register_api.dart';
import 'package:geinterra_apps/ui/register/providers/register_view_model.dart';
import 'package:geinterra_apps/ui/register/screens/kebijakan_screen.dart';
import 'package:geinterra_apps/ui/register/screens/syarat_screen.dart';
import 'package:geinterra_apps/ui/register/widget/custom_checkbox.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/registerpage';

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String resultDio = '';
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  bool passwordVisible = false;
  bool passwordConfrimationVisible = false;
  bool isChecked = false;
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
    final userProvider = Provider.of<RegisterViewModel>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_circle_outlined,
            size: 160.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formKey,
                child: Column(
                  children: [
                    Text(
                      'Buat Akun',
                      style: heading6.copyWith(),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outlined),
                        labelText: 'Nama Lengkap',
                        labelStyle: medium12pt.copyWith(color: textBlack),
                        hintText: 'Budi',
                        hintStyle: medium12pt.copyWith(color: textBlack),
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
                    SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call_outlined),
                        labelText: 'Nomor Telepon',
                        labelStyle: medium12pt.copyWith(color: textBlack),
                        hintText: '0812345678',
                        hintStyle: medium12pt.copyWith(color: textBlack),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      validator: (phone) {
                        if (phone != null && phone.length < 8) {
                          return 'Enter min. 8 digit';
                        } else {
                          return null; //form is valid
                        }
                      },
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                        labelText: 'Email',
                        labelStyle: medium12pt.copyWith(color: textBlack),
                        hintText: 'email@salah.com',
                        hintStyle: medium12pt.copyWith(color: textBlack),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      validator: (email) {
                        if (email != null && !EmailValidator.validate(email)) {
                          return 'Enter a valid email';
                        } else {
                          return null; //form is valid
                        }
                      },
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Consumer<RegisterViewModel>(
                      builder: (context, value, child) {
                        return TextFormField(
                          controller: _passwordController,
                          obscureText: value.toogle,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              onPressed: () {
                                value.toogleTheme();
                              },
                              icon: Icon(value.toogle
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            labelText: 'Password',
                            labelStyle: medium12pt.copyWith(color: textBlack),
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.3)),
                            hintText: '*****',
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
                        );
                      },
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomCheckbox(),
                        SizedBox(
                          width: 6.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Saya menyetujui',
                                  style: regular10pt.copyWith(color: textBlack),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SyaratScreen()));
                                  },
                                  child: Text(
                                    'syarat ketentuan',
                                    style: bold10.copyWith(color: textBlue),
                                  ),
                                ),
                                Text(
                                  'dan',
                                  style: regular10pt.copyWith(color: textBlack),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KebijakanScreen()));
                                  },
                                  child: Text(
                                    'kebijakan privasi',
                                    style: bold10.copyWith(color: textBlue),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'bersedia menerima informasi dari Ginap',
                              style: regular10pt.copyWith(color: textBlack),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final isValidForm = formKey.currentState!.validate();
                        String username = _nameController.text;
                        String email = _emailController.text;
                        String phone = _phoneController.text;
                        String password = _passwordController.text;

                        if (isValidForm) {
                          userProvider.addBool(false);
                          userProvider.setName(username);
                          userProvider.setEmail(email);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                            (route) => false,
                          );
                        }
                        final response = await RegisterApi().createUser(
                          name: _nameController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                          password: _passwordController.text,
                        );
                        resultDio = response.toString();
                        setState(() {});
                      },
                      child: Text('Buat Akun'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff297061),
                        minimumSize: Size(350.0, 50.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        textStyle: semibold12pt.copyWith(color: textWhite),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sudah punya akun?',
                          style: regular12pt.copyWith(color: textBlack),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: Text(
                            'Masuk',
                            style: semibold12pt.copyWith(color: textBlack),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      resultDio.toString(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
