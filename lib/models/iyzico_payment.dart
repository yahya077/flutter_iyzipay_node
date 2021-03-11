// To parse this JSON data, do
//
//     final iyzicoPayment = iyzicoPaymentFromJson(jsonString);

import 'dart:convert';

IyzicoPayment iyzicoPaymentFromJson(String str) => IyzicoPayment.fromJson(json.decode(str));

String iyzicoPaymentToJson(IyzicoPayment data) => json.encode(data.toJson());

class IyzicoPayment {
  IyzicoPayment({
    this.status,
    this.locale,
    this.systemTime,
    this.conversationId,
    this.price,
    this.paidPrice,
    this.installment,
    this.paymentId,
    this.fraudStatus,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.binNumber,
    this.lastFourDigits,
    this.basketId,
    this.currency,
    this.itemTransactions,
    this.authCode,
    this.phase,
    this.hostReference,
  });

  String status;
  String locale;
  int systemTime;
  String conversationId;
  int price;
  double paidPrice;
  int installment;
  String paymentId;
  int fraudStatus;
  int merchantCommissionRate;
  double merchantCommissionRateAmount;
  double iyziCommissionRateAmount;
  double iyziCommissionFee;
  String cardType;
  String cardAssociation;
  String cardFamily;
  String binNumber;
  String lastFourDigits;
  String basketId;
  String currency;
  List<ItemTransaction> itemTransactions;
  String authCode;
  String phase;
  String hostReference;

  factory IyzicoPayment.fromJson(Map<String, dynamic> json) => IyzicoPayment(
    status: json["status"] == null ? null : json["status"],
    locale: json["locale"] == null ? null : json["locale"],
    systemTime: json["systemTime"] == null ? null : json["systemTime"],
    conversationId: json["conversationId"] == null ? null : json["conversationId"],
    price: json["price"] == null ? null : json["price"],
    paidPrice: json["paidPrice"] == null ? null : json["paidPrice"].toDouble(),
    installment: json["installment"] == null ? null : json["installment"],
    paymentId: json["paymentId"] == null ? null : json["paymentId"],
    fraudStatus: json["fraudStatus"] == null ? null : json["fraudStatus"],
    merchantCommissionRate: json["merchantCommissionRate"] == null ? null : json["merchantCommissionRate"],
    merchantCommissionRateAmount: json["merchantCommissionRateAmount"] == null ? null : json["merchantCommissionRateAmount"].toDouble(),
    iyziCommissionRateAmount: json["iyziCommissionRateAmount"] == null ? null : json["iyziCommissionRateAmount"].toDouble(),
    iyziCommissionFee: json["iyziCommissionFee"] == null ? null : json["iyziCommissionFee"].toDouble(),
    cardType: json["cardType"] == null ? null : json["cardType"],
    cardAssociation: json["cardAssociation"] == null ? null : json["cardAssociation"],
    cardFamily: json["cardFamily"] == null ? null : json["cardFamily"],
    binNumber: json["binNumber"] == null ? null : json["binNumber"],
    lastFourDigits: json["lastFourDigits"] == null ? null : json["lastFourDigits"],
    basketId: json["basketId"] == null ? null : json["basketId"],
    currency: json["currency"] == null ? null : json["currency"],
    itemTransactions: json["itemTransactions"] == null ? null : List<ItemTransaction>.from(json["itemTransactions"].map((x) => ItemTransaction.fromJson(x))),
    authCode: json["authCode"] == null ? null : json["authCode"],
    phase: json["phase"] == null ? null : json["phase"],
    hostReference: json["hostReference"] == null ? null : json["hostReference"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "locale": locale == null ? null : locale,
    "systemTime": systemTime == null ? null : systemTime,
    "conversationId": conversationId == null ? null : conversationId,
    "price": price == null ? null : price,
    "paidPrice": paidPrice == null ? null : paidPrice,
    "installment": installment == null ? null : installment,
    "paymentId": paymentId == null ? null : paymentId,
    "fraudStatus": fraudStatus == null ? null : fraudStatus,
    "merchantCommissionRate": merchantCommissionRate == null ? null : merchantCommissionRate,
    "merchantCommissionRateAmount": merchantCommissionRateAmount == null ? null : merchantCommissionRateAmount,
    "iyziCommissionRateAmount": iyziCommissionRateAmount == null ? null : iyziCommissionRateAmount,
    "iyziCommissionFee": iyziCommissionFee == null ? null : iyziCommissionFee,
    "cardType": cardType == null ? null : cardType,
    "cardAssociation": cardAssociation == null ? null : cardAssociation,
    "cardFamily": cardFamily == null ? null : cardFamily,
    "binNumber": binNumber == null ? null : binNumber,
    "lastFourDigits": lastFourDigits == null ? null : lastFourDigits,
    "basketId": basketId == null ? null : basketId,
    "currency": currency == null ? null : currency,
    "itemTransactions": itemTransactions == null ? null : List<dynamic>.from(itemTransactions.map((x) => x.toJson())),
    "authCode": authCode == null ? null : authCode,
    "phase": phase == null ? null : phase,
    "hostReference": hostReference == null ? null : hostReference,
  };
}

class ItemTransaction {
  ItemTransaction({
    this.itemId,
    this.paymentTransactionId,
    this.transactionStatus,
    this.price,
    this.paidPrice,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.blockageRate,
    this.blockageRateAmountMerchant,
    this.blockageRateAmountSubMerchant,
    this.blockageResolvedDate,
    this.subMerchantPrice,
    this.subMerchantPayoutRate,
    this.subMerchantPayoutAmount,
    this.merchantPayoutAmount,
    this.convertedPayout,
  });

  String itemId;
  String paymentTransactionId;
  int transactionStatus;
  double price;
  double paidPrice;
  int merchantCommissionRate;
  double merchantCommissionRateAmount;
  double iyziCommissionRateAmount;
  double iyziCommissionFee;
  int blockageRate;
  int blockageRateAmountMerchant;
  int blockageRateAmountSubMerchant;
  DateTime blockageResolvedDate;
  int subMerchantPrice;
  int subMerchantPayoutRate;
  int subMerchantPayoutAmount;
  double merchantPayoutAmount;
  ConvertedPayout convertedPayout;

  factory ItemTransaction.fromJson(Map<String, dynamic> json) => ItemTransaction(
    itemId: json["itemId"] == null ? null : json["itemId"],
    paymentTransactionId: json["paymentTransactionId"] == null ? null : json["paymentTransactionId"],
    transactionStatus: json["transactionStatus"] == null ? null : json["transactionStatus"],
    price: json["price"] == null ? null : json["price"].toDouble(),
    paidPrice: json["paidPrice"] == null ? null : json["paidPrice"].toDouble(),
    merchantCommissionRate: json["merchantCommissionRate"] == null ? null : json["merchantCommissionRate"],
    merchantCommissionRateAmount: json["merchantCommissionRateAmount"] == null ? null : json["merchantCommissionRateAmount"].toDouble(),
    iyziCommissionRateAmount: json["iyziCommissionRateAmount"] == null ? null : json["iyziCommissionRateAmount"].toDouble(),
    iyziCommissionFee: json["iyziCommissionFee"] == null ? null : json["iyziCommissionFee"].toDouble(),
    blockageRate: json["blockageRate"] == null ? null : json["blockageRate"],
    blockageRateAmountMerchant: json["blockageRateAmountMerchant"] == null ? null : json["blockageRateAmountMerchant"],
    blockageRateAmountSubMerchant: json["blockageRateAmountSubMerchant"] == null ? null : json["blockageRateAmountSubMerchant"],
    blockageResolvedDate: json["blockageResolvedDate"] == null ? null : DateTime.parse(json["blockageResolvedDate"]),
    subMerchantPrice: json["subMerchantPrice"] == null ? null : json["subMerchantPrice"],
    subMerchantPayoutRate: json["subMerchantPayoutRate"] == null ? null : json["subMerchantPayoutRate"],
    subMerchantPayoutAmount: json["subMerchantPayoutAmount"] == null ? null : json["subMerchantPayoutAmount"],
    merchantPayoutAmount: json["merchantPayoutAmount"] == null ? null : json["merchantPayoutAmount"].toDouble(),
    convertedPayout: json["convertedPayout"] == null ? null : ConvertedPayout.fromJson(json["convertedPayout"]),
  );

  Map<String, dynamic> toJson() => {
    "itemId": itemId == null ? null : itemId,
    "paymentTransactionId": paymentTransactionId == null ? null : paymentTransactionId,
    "transactionStatus": transactionStatus == null ? null : transactionStatus,
    "price": price == null ? null : price,
    "paidPrice": paidPrice == null ? null : paidPrice,
    "merchantCommissionRate": merchantCommissionRate == null ? null : merchantCommissionRate,
    "merchantCommissionRateAmount": merchantCommissionRateAmount == null ? null : merchantCommissionRateAmount,
    "iyziCommissionRateAmount": iyziCommissionRateAmount == null ? null : iyziCommissionRateAmount,
    "iyziCommissionFee": iyziCommissionFee == null ? null : iyziCommissionFee,
    "blockageRate": blockageRate == null ? null : blockageRate,
    "blockageRateAmountMerchant": blockageRateAmountMerchant == null ? null : blockageRateAmountMerchant,
    "blockageRateAmountSubMerchant": blockageRateAmountSubMerchant == null ? null : blockageRateAmountSubMerchant,
    "blockageResolvedDate": blockageResolvedDate == null ? null : blockageResolvedDate.toIso8601String(),
    "subMerchantPrice": subMerchantPrice == null ? null : subMerchantPrice,
    "subMerchantPayoutRate": subMerchantPayoutRate == null ? null : subMerchantPayoutRate,
    "subMerchantPayoutAmount": subMerchantPayoutAmount == null ? null : subMerchantPayoutAmount,
    "merchantPayoutAmount": merchantPayoutAmount == null ? null : merchantPayoutAmount,
    "convertedPayout": convertedPayout == null ? null : convertedPayout.toJson(),
  };
}

class ConvertedPayout {
  ConvertedPayout({
    this.paidPrice,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.blockageRateAmountMerchant,
    this.blockageRateAmountSubMerchant,
    this.subMerchantPayoutAmount,
    this.merchantPayoutAmount,
    this.iyziConversionRate,
    this.iyziConversionRateAmount,
    this.currency,
  });

  double paidPrice;
  double iyziCommissionRateAmount;
  double iyziCommissionFee;
  int blockageRateAmountMerchant;
  int blockageRateAmountSubMerchant;
  int subMerchantPayoutAmount;
  double merchantPayoutAmount;
  int iyziConversionRate;
  int iyziConversionRateAmount;
  String currency;

  factory ConvertedPayout.fromJson(Map<String, dynamic> json) => ConvertedPayout(
    paidPrice: json["paidPrice"] == null ? null : json["paidPrice"].toDouble(),
    iyziCommissionRateAmount: json["iyziCommissionRateAmount"] == null ? null : json["iyziCommissionRateAmount"].toDouble(),
    iyziCommissionFee: json["iyziCommissionFee"] == null ? null : json["iyziCommissionFee"].toDouble(),
    blockageRateAmountMerchant: json["blockageRateAmountMerchant"] == null ? null : json["blockageRateAmountMerchant"],
    blockageRateAmountSubMerchant: json["blockageRateAmountSubMerchant"] == null ? null : json["blockageRateAmountSubMerchant"],
    subMerchantPayoutAmount: json["subMerchantPayoutAmount"] == null ? null : json["subMerchantPayoutAmount"],
    merchantPayoutAmount: json["merchantPayoutAmount"] == null ? null : json["merchantPayoutAmount"].toDouble(),
    iyziConversionRate: json["iyziConversionRate"] == null ? null : json["iyziConversionRate"],
    iyziConversionRateAmount: json["iyziConversionRateAmount"] == null ? null : json["iyziConversionRateAmount"],
    currency: json["currency"] == null ? null : json["currency"],
  );

  Map<String, dynamic> toJson() => {
    "paidPrice": paidPrice == null ? null : paidPrice,
    "iyziCommissionRateAmount": iyziCommissionRateAmount == null ? null : iyziCommissionRateAmount,
    "iyziCommissionFee": iyziCommissionFee == null ? null : iyziCommissionFee,
    "blockageRateAmountMerchant": blockageRateAmountMerchant == null ? null : blockageRateAmountMerchant,
    "blockageRateAmountSubMerchant": blockageRateAmountSubMerchant == null ? null : blockageRateAmountSubMerchant,
    "subMerchantPayoutAmount": subMerchantPayoutAmount == null ? null : subMerchantPayoutAmount,
    "merchantPayoutAmount": merchantPayoutAmount == null ? null : merchantPayoutAmount,
    "iyziConversionRate": iyziConversionRate == null ? null : iyziConversionRate,
    "iyziConversionRateAmount": iyziConversionRateAmount == null ? null : iyziConversionRateAmount,
    "currency": currency == null ? null : currency,
  };
}
