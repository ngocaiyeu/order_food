import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  RxInt value = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      // color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              () => InkWell(
                onTap: () => value.value = index,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.only(right: 10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: (value.value == index)
                              ? const Color.fromRGBO(255, 107, 67, 10)
                              : const Color(0xFFE0E0E0),
                          width: 1),
                      color: const Color.fromRGBO(245, 245, 248, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: const Color(0xFFE0E0E0), width: 1),
                            ),
                            margin: const EdgeInsets.all(10),
                            height: 40,
                            width: 50,
                            child: SvgPicture.asset(
                              "assets/images/mastercard.svg",
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Text(
                            "Master Card",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Icon(
                          (value.value == index)
                              ? Icons.radio_button_on
                              : Icons.radio_button_off,
                          color: (value.value == index)
                              ? const Color.fromRGBO(255, 107, 67, 10)
                              : const Color(0xFFE0E0E0))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
