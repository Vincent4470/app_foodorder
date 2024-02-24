import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:flutter/material.dart';

class StoreVoucherWidger extends StatelessWidget {
  const StoreVoucherWidger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 36,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: cardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/Voucher.png',
                  width: 32,
                  height: 32,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Voucher Store',
                  style: ConstantTextStyle.stylePoppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              size: 24,
              color: whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
