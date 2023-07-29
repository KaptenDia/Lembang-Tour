import 'package:airplane_bwa/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class Header extends StatelessWidget {
  const Header(this.user, {super.key});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,\n${user.name}',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to visit today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: blackColor,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/profil.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
