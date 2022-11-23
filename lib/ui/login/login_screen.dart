import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/widgets/rounded_button.dart';
import 'package:geinterra_apps/ui/login/widgets/text_field_container.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
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
                          height: 15,
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
                                        Icons.person,
                                        color: Color(0xff297061),
                                      ),
                                      hintText: 'Email',
                                      hintStyle:
                                          TextStyle(fontFamily: 'Poppins'),
                                      border: InputBorder.none),
                                  validator: Validators.compose([
                                    Validators.required('email is required'),
                                    Validators.email('invalid email address')
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
                                        Icons.lock,
                                        color: Color(0xff297061),
                                      ),
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                          fontFamily: 'Poppins'),
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
                                    Validators.required('password is required')
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
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  const Text(
                                                    'Masukkan email untuk mengirimkan tautan pengganti sandi',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    textAlign: TextAlign.center,
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
                                                                Icons.person,
                                                                color: Color(
                                                                    0xff297061),
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
                                                            'email is required'),
                                                        Validators.email(
                                                            'invalid email address')
                                                      ]),
                                                    ),
                                                  )
                                                ],
                                              )),
                                              actions: <Widget>[
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('Batal')),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Text('Kirim')),
                                              ],
                                            );
                                          });
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Text('Lupa kata sandi?',
                                            style: TextStyle(
                                                color: Color(0xff297061),
                                                fontFamily: 'Poppins'))
                                      ],
                                    ),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              RoundedButton(
                                  text: 'Masuk',
                                  press: () {
                                    if (_formKey.currentState!.validate()) {
                                      print(_emailController.text.trim());
                                      print(_passwordController.text.trim());
                                      print('success');
                                    }
                                    // FirebaseAuth.instance
                                    //     .signInWithEmailAndPassword(
                                    //         email: _emailController.text.trim(),
                                    //         password:
                                    //             _passwordController.text.trim())
                                    //     .then((value) => Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 const BottomNavigatorView())));
                                  }),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Atau masuk dengan',
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              const SizedBox(
                                height: 20,
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