import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/register_model.dart';
import 'package:geinterra_apps/providers/register_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
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
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  // @override
  // void initState() {
  //   final registerProvider =
  //       Provider.of<RegisterViewModel>(context, listen: false);
  //   registerProvider.registerUser(userRegister);
  //   super.initState();
  // }

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
    Size size = MediaQuery.of(context).size;
    final userProvider = Provider.of<RegisterViewModel>(context, listen: false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 242, 242, 242),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 160.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                            SizedBox(height: size.height * 0.02),
                            _buildTextFieldName(),
                            SizedBox(height: size.height * 0.012),
                            _buildTextFieldPhone(),
                            SizedBox(height: size.height * 0.012),
                            _buildTextFieldEmail(),
                            SizedBox(height: size.height * 0.012),
                            _buildTextFieldPassword(),
                            SizedBox(height: size.height * 0.012),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomCheckbox(),
                                SizedBox(width: size.width * 0.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Saya menyetujui',
                                          style: regular10pt.copyWith(
                                              color: textBlack),
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
                                            style: bold10.copyWith(
                                                color: textBlue),
                                          ),
                                        ),
                                        Text(
                                          'dan',
                                          style: regular10pt.copyWith(
                                              color: textBlack),
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
                                            style: bold10.copyWith(
                                                color: textBlue),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'bersedia menerima informasi dari Ginap',
                                      style: regular10pt.copyWith(
                                          color: textBlack),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.02),
                            ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  userProvider.register(
                                      _nameController.text,
                                      _emailController.text,
                                      _phoneController.text,
                                      _passwordController.text,
                                      context);
                                }
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
                                textStyle:
                                    semibold12pt.copyWith(color: textWhite),
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
                                            builder: (context) =>
                                                const LoginPage()));
                                  },
                                  child: Text(
                                    'Masuk',
                                    style:
                                        semibold12pt.copyWith(color: textBlack),
                                    semanticsLabel: 'Button Masuk',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldName() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person_outlined),
        labelText: 'Nama Lengkap',
        labelStyle: medium12pt.copyWith(color: textBlack),
        hintText: 'Budi',
        hintStyle: medium12pt.copyWith(color: textBlack),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      validator: (value) {
        if (value != null && value.length < 4) {
          return 'Enter at least 4 characters';
        } else {
          return null; //form is valid
        }
      },
    );
  }

  Widget _buildTextFieldPhone() {
    return TextFormField(
      controller: _phoneController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.call_outlined),
        labelText: 'Nomor Telepon',
        labelStyle: medium12pt.copyWith(color: textBlack),
        hintText: '0812345678',
        hintStyle: medium12pt.copyWith(color: textBlack),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      validator: (phone) {
        if (phone != null && phone.length < 8) {
          return 'Enter min. 8 digit';
        } else {
          return null; //form is valid
        }
      },
    );
  }

  Widget _buildTextFieldEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.alternate_email_outlined),
        labelText: 'Email',
        labelStyle: medium12pt.copyWith(color: textBlack),
        hintText: 'email@salah.com',
        hintStyle: medium12pt.copyWith(color: textBlack),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      validator: (email) {
        if (email != null && !EmailValidator.validate(email)) {
          return 'Enter a valid email';
        } else {
          return null; //form is valid
        }
      },
    );
  }

  Widget _buildTextFieldPassword() {
    return Consumer<RegisterViewModel>(
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
              icon:
                  Icon(value.toogle ? Icons.visibility_off : Icons.visibility),
            ),
            labelText: 'Password',
            labelStyle: medium12pt.copyWith(color: textBlack),
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
            hintText: '*****',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
          validator: (password) {
            if (password != null && password.length < 5) {
              return 'Enter min. 5 characters';
            }
            return null;
          },
        );
      },
    );
  }
}
