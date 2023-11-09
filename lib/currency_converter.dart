import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double amount = 0.0;
  String selectedCurrency = 'USD';
  Map<String, double> exchangeRates = {
    'USD': 1.0,
    'IDR': 14422.50,
    'EUR': 0.85,
    'GBP': 0.73,
    'JPY': 113.14,
  };

  void convertCurrency() {
    if (exchangeRates.containsKey(selectedCurrency)) {
      double result = amount * exchangeRates[selectedCurrency]!;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Result'),
            content: Text('$amount USD = $result $selectedCurrency'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid currency selected.'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        backgroundColor: Color(0xff6441A5),
      ),
      backgroundColor: Color(0xffE0D9ED),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ENTER AMOUNT IN USD',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6441A5),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    amount = double.parse(value);
                  });
                },
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Enter amount',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedCurrency,
                onChanged: (String? value) {
                  setState(() {
                    selectedCurrency = value!;
                  });
                },
                items: exchangeRates.keys.map((String currency) {
                  return DropdownMenuItem<String>(
                    value: currency,
                    child: Text(currency),
                  );
                }).toList(),
                style: TextStyle(fontSize: 20, color: Color(0xff6441A5)),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  convertCurrency();
                },
                child: Text('Convert', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6441A5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
