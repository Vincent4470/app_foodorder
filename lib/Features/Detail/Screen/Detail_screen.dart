import 'package:app_foodorder/Features/Detail/Controller/detail_controler.dart';
import 'package:app_foodorder/Features/Detail/Widget/ChipRestoWidger.dart';
import 'package:app_foodorder/Features/Detail/Widget/HeaderDetail.dart';
import 'package:app_foodorder/Features/Detail/Widget/RestoInformationWidger.dart';
import 'package:app_foodorder/Features/Detail/Widget/StoreVoucherWidger.dart';
import 'package:app_foodorder/Features/models/recomend_models.dart';
import 'package:app_foodorder/constant/constant_color.dart';
import 'package:app_foodorder/constant/constant_text.dart';
import 'package:app_foodorder/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.productModel});

  final ProductModel productModel;

  final DetailController detailController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderDetailWidget(productModel: productModel),
            const SizedBox(
              height: 17,
            ),
            const RestoInformationWidget(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  ChipRestoWidget(
                    imageUrl: 'assets/icon/bintang.png',
                    label: productModel.rating,
                  ),
                  const ChipRestoWidget(
                    imageUrl: 'assets/icon/Location.png',
                    label: '1.1 KM',
                  ),
                  const ChipRestoWidget(
                    imageUrl: 'assets/icon/Halal.png',
                    label: 'halal',
                  ),
                  const ChipRestoWidget(
                    imageUrl: 'assets/icon/jempol.png',
                    label: '4,3',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const StoreVoucherWidger(),
            const SizedBox(
              height: 22,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 17,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                  color: cardColor),
              child: Row(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          productModel.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productModel.label,
                          style: ConstantTextStyle.stylePoppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: tealColor),
                                ),
                                child: Center(
                                  child: Text(
                                    '${detailController.itemCount}',
                                    style: ConstantTextStyle.stylePoppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => detailController.incrementItem(),
                                  child: Container(
                                    width: 34,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: tealColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 24,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () => detailController.decrementItem(),
                                  child: Container(
                                    width: 34,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: tealColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.remove,
                                        size: 24,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: ConstantTextStyle.stylePoppins(
                                fontSize: 16,
                                color: greyColor,
                              ),
                            ),
                            Obx(
                              () => Text(
                                'Rp${detailController.totalPrice(productModel).value}',
                                style: ConstantTextStyle.stylePoppins(
                                  fontSize: 16,
                                  color: greyColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(
                    RouteName.orderScreen,
                    arguments: {
                      'data': productModel.toJson(),
                      'totalPrice':
                          detailController.totalPrice(productModel).value,
                      'totalItem': detailController.itemCount.value,
                    },
                  ),
                  style: ButtonStyle(
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.symmetric(
                        horizontal: 65,
                        vertical: 12,
                      )),
                      backgroundColor:
                          const MaterialStatePropertyAll(tealColor),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      )),
                  child: Text(
                    'Order',
                    style: ConstantTextStyle.stylePoppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
