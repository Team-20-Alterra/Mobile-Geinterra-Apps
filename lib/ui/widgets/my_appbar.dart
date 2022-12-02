import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/utils/colors.dart';

import '../../theme.dart';

PreferredSizeWidget myAppBar({required String title, required Function back}) =>
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: MyColors.myGreen,
        ),
        onPressed: () => back,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: heading6.copyWith(color: primaryGreen),
          ),
        ],
      ),
    );
