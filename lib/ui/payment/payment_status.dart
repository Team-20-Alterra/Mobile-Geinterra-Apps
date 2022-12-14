import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:geinterra_apps/ui/payment/widgets/payment_condition.dart';

class PaymentStatus extends StatelessWidget {
  static const routeName = '/paymentstatus';
  const PaymentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xff297061),
                      )),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Status Pembayaran',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff297061),
                        fontSize: 16),
                  )
                ],
              ),
            ),

            //Payment Status
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: succesPay(context),
            ),

            //Payment Total
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey, width: 2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jumlah Pembayaran',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Rp37.000',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                    )
                  ],
                ),
              ),
            ),

            //Payment Details
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'From: ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text('Ayam Geprek Wakanda',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Credit Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey.shade600),
                  ),
                  Text('UserID',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey.shade600))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Divider(
                height: 5,
                color: Colors.black,
                thickness: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'To: ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text('Ricky',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Credit Card',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey.shade600),
                  ),
                  Text('UserID',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey.shade600))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Divider(
                height: 5,
                color: Colors.black,
                thickness: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date: ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text('18 Nov 2022',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('12.45 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey.shade600))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Divider(
                height: 5,
                color: Colors.black,
                thickness: 1,
              ),
            ),

            //Buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        color: Color.fromARGB(255, 41, 112, 97),
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Download Invoice',
                        style:
                            TextStyle(color: Color.fromARGB(255, 41, 112, 97)),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.maxFinite, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Color.fromARGB(255, 41, 112, 97)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: Text('Home')),
            )
          ],
        ),
      )),
    );
  }
}
