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

// List<BankModel> data = new List();

enum MBank { $name, $logo, $iD }

class _MetodeBankState extends State<MetodeBank> {
  get data => null;

  @override
  void initState() {
    final bankProvider = Provider.of<BankViewModel>(context, listen: false);
    bankProvider.getAllBank();
    super.initState();
  }

  Bank? bank;

  final bankModel = BankModel();

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
          : ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.green,
              ),
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, i) {
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
                        child: RadioListTile<MBank>(
                          secondary: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              image: DecorationImage(
                                image: NetworkImage(bank!.logo!),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                          value: MBank.$iD,
                          groupValue: data[i].selectedValue,
                          onChanged: (value) {
                            setState(
                              () {
                                bank = value as Bank?;
                              },
                            );
                          },
                          activeColor: primaryGreen,
                          title: Text(
                            bank!.name!,
                            style: semibold16pt.copyWith(color: textBlack),
                          ),
                        ),
                      ),
                      Spacer(),
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
                            onPressed: bank != null
                                ? () {
                                    if (isButtonActive) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailPembayaran(),
                                        ),
                                      );
                                    }
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryGreen),
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
              },
            ),
    );
  }
}
