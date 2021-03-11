import 'package:flutter/material.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40,),
              Text("Payment Successfully",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.green),),
              SizedBox(height: 10,),
              Image.asset('assets/images/payment_successful.png'),
              SizedBox(height: 10,),
              FlatButton(onPressed: () {}, child: Text('My Orders', style: TextStyle(color: Colors.white),), color: Colors.lightGreen,)
            ],
          ),
        ),
      ),
    );
  }
}
