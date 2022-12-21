import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/response_banks.dart';
import 'package:geinterra_apps/providers/bank_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:provider/provider.dart';

import '../detail/detail_pembayaran.dart';

class MetodeBank extends StatefulWidget {
  static const String routeName = 'methodbank';

  const MetodeBank({super.key});

  @override
  State<MetodeBank> createState() => _MetodeBankState();
}

class _MetodeBankState extends State<MetodeBank> {
  late BankViewModel provider;

  @override
  void dispose() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      provider.clearState();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context, listen: true);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                'Metode Pembayaran Bank',
                style: heading6.copyWith(color: primaryGreen),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: _showList(provider)),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Total Harga',
                style: regular16pt.copyWith(color: textBlack),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Rp. 37.000',
                style: heading10.copyWith(color: textBlack),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              width: double.infinity,
              height: size.height * 0.06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: provider.codeBank != null
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailPembayaran(),
                            ),
                          );
                        }
                      : null,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                  child: Text(
                    'Lanjutkan',
                    style: semibold16pt.copyWith(color: textWhite),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _showList(BankViewModel provider) {
    switch (provider.state) {
      case BankViewState.loading:
        return const Center(child: CircularProgressIndicator());
      case BankViewState.success:
        var data = provider.bankModel!.data;
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                _itemViewBank(provider, data[index]),
                const SizedBox(
                  height: 16,
                )
              ],
            );
          },
        );
      case BankViewState.error:
        return const Text('error');
      case BankViewState.none:
        return const SizedBox();
    }
  }

  Widget _itemViewBank(BankViewModel provider, Bank bank) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: primaryGrey,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
      child: RadioListTile<String>(
        secondary: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(bank.logo),
              fit: BoxFit.contain,
            ),
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        value: bank.id.toString(),
        groupValue: provider.codeBank,
        onChanged: (value) => provider.setCodeBank(value.toString()),
        activeColor: primaryGreen,
        title: Text(
          bank.name,
          style: semibold16pt.copyWith(color: textBlack),
        ),
      ),
    );
  }
}
