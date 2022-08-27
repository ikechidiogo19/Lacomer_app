import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/custom_card_type_icon.dart';
import 'package:get/get.dart';
import 'package:lacomer_app/controller/card_controller.dart';
import 'package:lacomer_app/contstriants.dart';
import 'package:lacomer_app/utils/default_button.dart';
import 'package:lacomer_app/view/payment.dart';

class Checkout extends StatelessWidget {
  Checkout({Key? key}) : super(key: key);
  final CardController cardController = Get.find();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Checkout",
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.bold, color: ktextcolor),
      )),
      body: ListView(shrinkWrap: true, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GetBuilder<CardController>(builder: (controller) {
              return CreditCardWidget(
                cardHolderName: cardController.cardHolderName,
                cardNumber: cardController.cardNumber,
                expiryDate: cardController.expiryDate,
                cvvCode: cardController.cvvCode,
                showBackView: cardController.isCvvFocused,
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (CreditCardBrand) {},
                cardBgColor: kprimarycolor,
                bankName: "ACCESS ",
                height: 175,
                width: double.infinity,
                customCardTypeIcons: [
                  CustomCardTypeIcon(
                      cardType: CardType.visa,
                      cardImage: Image.asset(
                        "Asset/images/Visa.png",
                        height: 50,
                        width: 50,
                      ))
                ],
              );
            }),
            GetBuilder<CardController>(builder: (controller) {
              return CreditCardForm(
                  cardNumber: cardController.cardNumber,
                  expiryDate: cardController.expiryDate,
                  cardHolderName: cardController.cardHolderName,
                  cvvCode: cardController.cvvCode,
                  onCreditCardModelChange:
                      cardController.onCreditCardModelChange,
                  themeColor: Colors.black,
                  formKey: formKey);
            }),
            SizedBox(
              height: size.height * .17,
            ),
            DefaultButton(
                press: () {
                  Get.to(() => Payment());
                },
                child: Text(
                  "Pay",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: klighttextcolor),
                )),
          ],
        ),
      ]),
    );
  }
}
