import 'package:flutter/material.dart';

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double celsius = 0;
  double fahrenheit = 0;
  double reamur = 0;
  double kelvin = 0;

  void convertTemperatures(String inputTemp) {
    setState(() {
      if (inputTemp.isEmpty) {
        celsius = 0;
        fahrenheit = 0;
        reamur = 0;
        kelvin = 0;
      } else {
        celsius = double.parse(inputTemp);
        fahrenheit = (celsius * 9 / 5) + 32;
        reamur = celsius * 4 / 5;
        kelvin = celsius + 273.15;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff6441A5),
      ),
      backgroundColor: Color(0xffE0D9ED),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CONVERTER SUHU',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6441A5),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  convertTemperatures(value);
                },
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Enter temperature in Celsius',
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildTemperatureCard('Fahrenheit', fahrenheit),
              _buildTemperatureCard('Reamur', reamur),
              _buildTemperatureCard('Kelvin', kelvin),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTemperatureCard(String unit, double value) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$unit:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '$value',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: TemperatureConverter(),
    ),
  );
}
