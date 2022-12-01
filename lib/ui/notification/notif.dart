import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotifPage extends StatelessWidget {
  const NotifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 41, 112, 97),
                        )),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      'Notifikasi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 41, 112, 97),
                          fontSize: 19),
                    )
                  ],
            ),
          ),

          Expanded(child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ada Tagihan Yang Perlu Dibayar!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    const SizedBox(height: 3,),
                    Text('Resto A mengirimkanmu tagihan sebesar 1235XXXXX. Yuk bayar sebelum batas yang ditentukan!'),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.access_time_rounded, size: 20,color: Colors.grey,),
                        const SizedBox(width: 2,),
                        Text('22 Nov 2022, ', style: TextStyle(color: Colors.grey)),
                        Text('13.00 WIB', style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
            );
          }))
        ],
      )),
    );
  }
}
