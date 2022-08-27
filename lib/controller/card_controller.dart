import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void onCreditCardModelChange(CreditCardModel data) {
    cardHolderName = data.cardHolderName;
    expiryDate = data.expiryDate;
    cardNumber = data.cardNumber;
    cvvCode = data.cvvCode;
    isCvvFocused = data.isCvvFocused;
    update();
  }
}
