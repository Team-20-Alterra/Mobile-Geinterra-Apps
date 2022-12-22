import 'package:flutter/material.dart';
import 'package:geinterra_apps/providers/bank_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/detail_pembayaran.dart';
import 'package:provider/provider.dart';

class MetodeVA extends StatefulWidget {
  static const String routeName = 'methodva';
  const MetodeVA({super.key});

  @override
  State<MetodeVA> createState() => _MetodeVAState();
}

enum VA { BNI, BCA, BRI, Mandiri, CIMB }

class _MetodeVAState extends State<MetodeVA> {
  VA? radioValue;

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
              'Metode Pembayaran Virtual Akun',
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
                _itemBankView(),
                SizedBox(
                  height: size.height / 1.7,
                ),
                _buildElevatedButton(),
              ],
            ),
    );
  }

  Widget _itemBankView() {
    return Consumer<BankViewModel>(
      builder: (context, provider, _) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BNI
              Container(
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
                child: RadioListTile<VA>(
                  secondary: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/1200px-BNI_logo.svg.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: VA.BNI,
                  groupValue: radioValue,
                  onChanged: (value) {
                    setState(
                      () {
                        radioValue = value;
                      },
                    );
                  },
                  activeColor: primaryGreen,
                  title: Text(
                    'BNI VA',
                    style: semibold16pt.copyWith(color: textBlack),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
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
