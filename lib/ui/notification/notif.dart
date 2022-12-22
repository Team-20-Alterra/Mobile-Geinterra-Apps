import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geinterra_apps/data/model/notif_model.dart';
import 'package:geinterra_apps/providers/notif_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:provider/provider.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({super.key});

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
  @override
  Widget build(BuildContext context) {
    final notifProvider = Provider.of<NotifViewModel>(context, listen: true);

    final listNotif = notifProvider.notif;
    final isLoading = notifProvider.notif == NotifViewState.loading;
    final isError = notifProvider.notif == NotifViewState.error;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff297061),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifikasi',
                style: heading6.copyWith(color: primaryGreen),
              ),
            ],
          ),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listNotif?.data?.length,
                itemBuilder: (context, index) {
                  return _buildNotif(listNotif?.data?[index], context);
                },
              ),
      ),
    );
  }

  Widget _buildNotif(Data? data, BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data!.title!,
                  style: bold.copyWith(color: textBlack),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  data.body!,
                  style: regular10pt.copyWith(color: textBlack),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      data.createdAt!,
                      style: regular10pt.copyWith(color: primaryGrey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
