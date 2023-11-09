import 'package:flutter/material.dart';

class BMICalculatorScreen extends StatefulWidget {
  @override
  _BMICalculatorScreenState createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmiResult = 0.0;
  String bmiCategory = '';
  String selectedGender = 'Laki-laki'; // Default gender

  void calculateBMI() {
    if (weightController.text.isNotEmpty && heightController.text.isNotEmpty) {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100; 
      double bmi = weight / (height * height);
      setState(() {
        bmiResult = bmi;
        if (selectedGender == 'Laki-laki') {
          if (bmi < 18.5) {
            bmiCategory = 'Kurus';
          } else if (bmi >= 18.5 && bmi < 24.9) {
            bmiCategory = 'Normal';
          } else if (bmi >= 25.0 && bmi < 29.9) {
            bmiCategory = 'Gemuk';
          } else {
            bmiCategory = 'Obesitas';
          }
        } else {
          if (bmi < 17.5) {
            bmiCategory = 'Kurus';
          } else if (bmi >= 17.5 && bmi < 23.9) {
            bmiCategory = 'Normal';
          } else if (bmi >= 24.0 && bmi < 28.9) {
            bmiCategory = 'Gemuk';
          } else {
            bmiCategory = 'Obesitas';
          }
        }
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Input Kosong"),
            content: Text("Pastikan Anda mengisi berat badan dan tinggi badan."),
            actions: [
              TextButton(
                child: Text("OK"),
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

  Color _getBackgroundColor() {
    if (bmiResult < 18.5) {
      return Colors.yellow; 
    } else if (bmiResult >= 18.5 && bmiResult < 24.9) {
      return Colors.green; 
    } else if (bmiResult >= 25.0 && bmiResult < 29.9) {
      return Colors.orange; 
    } else {
      return Colors.red; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Color(0xff6441A5),
        leading: IconButton( 
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: _getBackgroundColor(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<String>(
                value: selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
                items: <String>['Laki-laki', 'Perempuan'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Berat Badan (kg)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Tinggi Badan (cm)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: calculateBMI,
                child: Text('Hitung BMI'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Hasil BMI:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                bmiResult.toStringAsFixed(2),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'Kategori:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                bmiCategory,
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
