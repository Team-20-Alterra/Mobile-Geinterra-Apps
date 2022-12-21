import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/bank_model.dart';
import 'package:geinterra_apps/providers/bank_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/detail_pembayaran.dart';
import 'package:provider/provider.dart';

class MetodeBank extends StatefulWidget {
  static const String routeName = 'methodbank';

  const MetodeBank({super.key});

  @override
  State<MetodeBank> createState() => _MetodeBankState();
}

enum MBank { BNI }

class _MetodeBankState extends State<MetodeBank> {
  MBank? radioValue;
  // Bank? bank;

  bool isButtonActive = true;

  @override
  Widget build(BuildContext context) {
    final bankProvider = Provider.of<BankViewModel>(context, listen: true);
    final listBank = bankProvider.bankModel;
    final isLoading = bankProvider.state == BankViewState.loading;
    final isError = bankProvider.state == BankViewState.error;

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
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
              'Metode Pembayaran Bank',
              style: heading6.copyWith(color: primaryGreen),
            ),
          ],
        ),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                // buildItemBank(bankProvider),
                SizedBox(
                  height: size.height / 1.4,
                ),
                _buildElevatedButton(),
              ],
            ),

      // body: isLoading
      //     ? Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : ListView.builder(
      //         itemCount: listBank?.bank?.length,
      //         itemBuilder: (context, i) {
      //           return Padding(
      //             padding: const EdgeInsets.all(16.0),
      //             child: Container(
      //               width: double.infinity,
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 border: Border.all(
      //                   color: primaryGrey,
      //                 ),
      //                 borderRadius: BorderRadius.all(
      //                   Radius.circular(18.0),
      //                 ),
      //               ),
      //               child: RadioListTile<BankViewModel>(
      //                 secondary: Container(
      //                   height: 40,
      //                   width: 40,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(16.0),
      //                     image: DecorationImage(
      //                       image: NetworkImage(listBank!.bank![i].logo!),
      //                       fit: BoxFit.contain,
      //                     ),
      //                   ),
      //                 ),
      //                 controlAffinity: ListTileControlAffinity.trailing,
      //                 value: bankProvider.getAllBank(),
      //                 groupValue: bankProvider,
      //                 onChanged: (value) {
      //                   // setState(
      //                   //   () {
      //                   //     value;
      //                   //   },
      //                   // );
      //                 },
      //                 activeColor: primaryGreen,
      //                 title: Text(
      //                   listBank.bank![i].name!,
      //                   style: semibold16pt.copyWith(color: textBlack),
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //       ),
    );
  }

  // Widget buildItemBank(BankViewModel bankViewModel) {
  //   return ListView.builder(itemBuilder: (context, index) {
  //     print("total : ");
  //     return Container(
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         border: Border.all(
  //           color: primaryGrey,
  //         ),
  //         borderRadius: BorderRadius.all(
  //           Radius.circular(18.0),
  //         ),
  //       ),
  //       child: RadioListTile(
  //         secondary: Container(
  //           height: 40,
  //           width: 40,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image:
  //                   NetworkImage(bankViewModel.bankModel!.bank![index].logo!),
  //               fit: BoxFit.contain,
  //             ),
  //           ),
  //         ),
  //         controlAffinity: ListTileControlAffinity.trailing,
  //         value: bankViewModel.bankModel,
  //         groupValue: radioValue,
  //         onChanged: (value) {
  //           setState(
  //             () {
  //               radioValue;
  //             },
  //           );
  //         },
  //         activeColor: primaryGreen,
  //         title: Text(
  //           bankViewModel.bankModel!.bank![index].name!,
  //           style: semibold16pt.copyWith(color: textBlack),
  //         ),
  //       ),
  //     );
  //   });
  // }
  Widget buildItemBank() {
    return Consumer<BankViewModel>(builder: (context, provider, child) {
      return ListView.builder(
        itemCount: provider.bankModel!.bank!.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: primaryGrey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(18.0),
              ),
            ),
            child: RadioListTile(
              secondary: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(provider.bankModel!.bank![index].logo!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: provider.bankModel,
              groupValue: radioValue,
              onChanged: (value) {
                setState(
                  () {
                    radioValue;
                  },
                );
              },
              activeColor: primaryGreen,
              title: Text(
                provider.bankModel!.bank![index].name!,
                style: semibold16pt.copyWith(color: textBlack),
              ),
            ),
          );
        },
      );
    });
  }

  Widget _buildElevatedButton() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Harga',
            style: regular16pt.copyWith(color: textBlack),
          ),
          Text(
            'Rp. 37.000',
            style: heading10.copyWith(color: textBlack),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            height: size.height * 0.06,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ElevatedButton(
                onPressed: radioValue != null
                    ? () {
                        if (isButtonActive) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPembayaran(),
                            ),
                          );
                        }
                      }
                    : null,
                style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                child: Text(
                  'Lanjutkan',
                  style: semibold16pt.copyWith(color: textWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
