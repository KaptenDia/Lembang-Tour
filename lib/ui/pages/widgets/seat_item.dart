import 'package:airplane_bwa/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({
    super.key,
    this.isAvailable = true,
    required this.id,
  });

  // NOTE : 0. Available 1.Selected 2. Unavailable

  final String id;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return unAvailableColor;
      } else {
        if (isSelected) {
          return primaryColor;
        } else {
          return availableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return unAvailableColor;
      } else {
        return primaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'You',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
        ),
        child: child(),
      ),
    );
  }
}
