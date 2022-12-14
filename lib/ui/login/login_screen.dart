import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/provider/login_provider.dart';
import 'package:geinterra_apps/ui/login/widgets/rounded_button.dart';
import 'package:geinterra_apps/ui/login/widgets/text_field_container.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';
import 'package:provider/provider.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import '../home/main_page.dart';
import 'components/page_title_bar.dart';
import 'components/under_part.dart';
import 'components/upside.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/loginpage';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordInVisible = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _forgotPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<LoginProvider>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Upside(imgUrl: 'assets/login.jpg'),
                const PageTitleBar(title: 'LOGIN'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFieldContainer(
                                child: TextFormField(
                                  controller: _emailController,
                                  cursorColor: const Color(0xff297061),
                                  decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.alternate_email_outlined,
                                        color: Colors.black,
                                      ),
                                      hintText: 'email',
                                      hintStyle:
                                          TextStyle(fontFamily: 'Poppins'),
                                      border: InputBorder.none),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'email tidak boleh kosong'),
                                    Validators.email(
                                        'Mohon masukkan email yang valid')
                                  ]),
                                ),
                              ),
                              TextFieldContainer(
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: _passwordInVisible,
                                  cursorColor: Color(0xff297061),
                                  decoration: InputDecoration(
                                      icon: const Icon(
                                        Icons.lock_outline,
                                        color: Colors.black,
                                      ),
                                      hintText: "password",
                                      hintStyle: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _passwordInVisible
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: const Color(0xff297061),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _passwordInVisible =
                                                !_passwordInVisible;
                                          });
                                        },
                                      ),
                                      border: InputBorder.none),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'email tidak boleh kosong'),
                                  ]),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Form(
                                                  child: Column(
                                                children: <Widget>[
                                                  const Text(
                                                    'Lupa kata sandi?',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    'Masukkan email untuk mengirimkan tautan pengganti sandi',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFieldContainer(
                                                    child: TextFormField(
                                                      controller:
                                                          _forgotPasswordController,
                                                      cursorColor: const Color(
                                                          0xff297061),
                                                      decoration:
                                                          const InputDecoration(
                                                              icon: Icon(
                                                                Icons
                                                                    .alternate_email_outlined,
                                                              ),
                                                              hintText:
                                                                  'blabla@gmail.com',
                                                              hintStyle: TextStyle(
                                                                  fontFamily:
                                                                      'Poppins'),
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      validator:
                                                          Validators.compose([
                                                        Validators.required(
                                                            'email tidak boleh kosong'),
                                                        Validators.email(
                                                            'Mohon masukkan email yang valid')
                                                      ]),
                                                    ),
                                                  )
                                                ],
                                              )),
                                              actions: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child:
                                                            const Text('Batal'),
                                                        style: ButtonStyle(
                                                            foregroundColor:
                                                                MaterialStateProperty.all(
                                                                    Colors
                                                                        .white),
                                                            backgroundColor:
                                                                MaterialStateProperty.all(
                                                                    Color(
                                                                        0xff498679)),
                                                            shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    side: BorderSide(color: Color(0xff297061))))),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child:
                                                            const Text('Kirim'),
                                                        style: ButtonStyle(
                                                            foregroundColor:
                                                                MaterialStateProperty.all(
                                                                    Colors
                                                                        .white),
                                                            backgroundColor:
                                                                MaterialStateProperty.all(
                                                                    Color(
                                                                        0xff297061)),
                                                            shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    side: BorderSide(color: Colors.white)))),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            );
                                          });
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Text('Lupa kata sandi?',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Color(0xff297061),
                                                fontFamily: 'Poppins'))
                                      ],
                                    ),
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              RoundedButton(
                                  text: 'Masuk',
                                  press: () {
                                    if (_formKey.currentState!.validate()) {
                                      userProvider.login(_emailController.text,
                                          _passwordController.text, context);
                                    }
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Atau masuk dengan',
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.apple)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.facebook)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.apple)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Belum Punya akun?",
                                navigatorText: "Buat Sekarang",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()));
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
