import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/notification/notif.dart';
import 'package:geinterra_apps/ui/payment/payment_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(onPressed: 
          (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return NotifPage();
            })));
          }, icon: Icon(Icons.notifications))
        ],
      ),
      body: ElevatedButton(onPressed: (() {
       Navigator.push(context, MaterialPageRoute(builder: (context){
        return PaymentStatus();
       }));
      }), child: Text('Status Pembayaran')),
    );
  }
}
