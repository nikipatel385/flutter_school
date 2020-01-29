import 'package:flutter/material.dart';
import 'package:flutter_rave/flutter_rave.dart';

class FeesParent extends StatefulWidget {
  @override
  _FeesParentState createState() => _FeesParentState();
}

class _FeesParentState extends State<FeesParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fees'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Make a payment',
                  style: TextStyle(
                      color: Colors.black,
                      inherit: true,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FredokaOne-Regular'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0, left: 20.0),
              child: Center(
                child: Text(
                  "Please don't exit the app or don't press back button until transaction has been completed.",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Center(
                child: Builder(
                  builder: (context) => SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: InkWell(
                        onTap: () => _pay(context),
                        child: Card(
                          color: Colors.indigo,
                          elevation: 15,
                          child: Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Card Payment",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.payment,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _pay(BuildContext context) {
    final snackBarOnFailure = SnackBar(content: Text('Transaction failed'));

    final snackBarOnClosed = SnackBar(content: Text('Transaction closed'));

    final _rave = RaveCardPayment(
      isDemo: true,
      encKey: "c53e399709de57d42e2e36ca",
      publicKey: "FLWPUBK-d97d92534644f21f8c50802f0ff44e02-X",
      transactionRef: "hvHPvKYaRuJLlJWSPWGGKUyaAfWeZKnm",
      amount: 100,
      email: "demo1@example.com",
      onSuccess: (response) {
        print("$response");

        print("Transaction Successful");

        if (mounted) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Transaction Sucessful!"),
              backgroundColor: Colors.green,
              duration: Duration(
                seconds: 5,
              ),
            ),
          );
        }
      },
      onFailure: (err) {
        print("$err");

        print("Transaction failed");

        Scaffold.of(context).showSnackBar(snackBarOnFailure);
      },
      onClosed: () {
        print("Transaction closed");

        Scaffold.of(context).showSnackBar(snackBarOnClosed);
      },
      context: context,
    );

    _rave.process();
  }
}
