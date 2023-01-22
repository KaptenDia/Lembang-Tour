import 'package:airplane_bwa/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? primaryColor
                : greyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? primaryColor
                  : transparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
