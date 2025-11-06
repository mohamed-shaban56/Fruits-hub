// import 'dart:developer';

// abstract class Payment{
//   payment();
// }
// class Paymob implements Payment{
//   @override
//   payment() {
//      log('paymob is responsple for payment ');
//   }
// }
// class Strip implements Payment{
//   @override
//   payment() {
//   log('Strip is responsple for payment ');
//   }
// }
// class PaymentService{
//   Payment payment;
//   PaymentService(this.payment);

//   paymet()
//   {
// payment.payment();
//   }
// }

// ////////////// liskov susbsitation
// abstract class Withdrow {
  
//   void withdrow(int amount){}
// }
// abstract  class Account {
//   int balance=1000;
//   void deposit(int amount)
//   {
// if (amount>0)
// {
//   balance+=amount;
// }else{
//   throw Exception('unExepected bahavior ,you cant deposit nagtive number');
// }
//   }
// }
  


// class CurrentDepositAccount extends Account implements Withdrow{
//   @override
//   void withdrow(int amount) {
//     if(amount>balance)
//    {
//     throw Exception('the amount you need to withdrow more than balance');
//    }else{
//     balance -=amount;
//    }
  
//   }
  

// }

// class FixedDepositAccount extends Account{
 
 

// }
// ///////////////////////
// abstract class ServicesClass{
//   sendData();
// }

// class FirebaseService implements ServicesClass{
//   @override
//   sendData() {
//    log("save data in firebase");
//   }

// }
// class SubaBaseService implements ServicesClass{
//   @override
//   sendData() {
//     log("save data in subabase");
//   }

// }

// class CasheData{
// ServicesClass service;
// CasheData(this.service);
// void cash(){
//   service.sendData();
// }
// }