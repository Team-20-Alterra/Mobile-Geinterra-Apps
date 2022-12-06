import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/profile/kebijakan.dart';
import 'package:geinterra_apps/ui/profile/sk_page.dart';
import 'package:geinterra_apps/ui/profile/ubah_akun_page.dart';
import 'package:geinterra_apps/ui/profile/version.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/profilpage';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(32.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage('assets/profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Ricky Farez",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "Ricky4545",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "085632446521",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Akun dan Keamanan',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.person_add_outlined,
                            color: Colors.black,
                          ),
                          title: const Text(
                            'Version',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, VersionPage.routeName);
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.edit_outlined,
                            color: Colors.black,
                          ),
                          title: const Text(
                            'Ubah data akun',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const UbahAkunPage()),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Info lainnya',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.star_border_outlined,
                            color: Colors.black,
                          ),
                          title: const Text(
                            'Beri rating',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.note_outlined,
                            color: Colors.black,
                          ),
                          title: const Text(
                            'Syarat dan Ketentuan',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, SyaratKetentuanPage.routeName);
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.privacy_tip_outlined,
                            color: Colors.black,
                          ),
                          title: const Text(
                            'Kebijakan Privasi',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, KebijakanPage.routeName);
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.logout_outlined,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Keluar akun',
                            style: TextStyle(fontSize: 12, color: Colors.red),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, LoginPage.routeName);
                          },
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
