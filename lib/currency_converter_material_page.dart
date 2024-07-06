import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=> _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
    TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(5),
              );
    return  Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor:  Colors.blueGrey,
          title: const Text('Currency Converter'),
          centerTitle: true,
        ),
        body: Center( 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Text(
            result.toStringAsFixed(2), 
            style: const TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: 'Enter the amount in USD', 
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white, 
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: (){
                setState(() {
                  result = double.parse(textEditingController.text)*83;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
               child: const Text('convert'),
            ),
          ),
        ],
        ),
        ),
        );
  }
}

