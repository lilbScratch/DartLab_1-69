abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;
  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print('ชำระเงินจำนวน $amount บาท ผ่านบัตรเครดิต (หมายเลข: $cardNumber)');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;
  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print('ชำระเงินจำนวน $amount บาท ผ่านพร้อมเพย์ (เบอร์: $phoneNumber)');
  }
}

class CashOnDelivery implements PaymentMethod {
  @override
  void pay(double amount) {
    print('บันทึกยอด $amount บาท - รอเก็บเงินปลายทางเมื่อสินค้าส่งถึง (Cash on Delivery)');
  }
}

void main() {
  List<PaymentMethod> paymentMethods = [
    CreditCard("1234-5678-9012-3456"),
    PromptPay("081-234-5678"),
    CashOnDelivery()
  ];

  double orderAmount = 1250.50;

  for (var method in paymentMethods) {
    method.pay(orderAmount);
  }
}
