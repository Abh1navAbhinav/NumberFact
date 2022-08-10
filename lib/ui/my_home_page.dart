import 'package:api_tutorial/api/apis.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _textInputFormController = TextEditingController();
  String showText = 'Enter a number below';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      Text(
                        showText,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: TextFormField(
                    controller: _textInputFormController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Number',
                      hintStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final number = _textInputFormController.text;
                    if (number.isNotEmpty) {
                      final result = await getNumberFact(number: number);
                    _textInputFormController.clear();
                      setState(() {
                        showText = result.text ?? showText;
                      });
                    } else {
                      return;
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
              SizedBox(height: MediaQuery.of(context).size.height/9,)
          ],
        ),
      ),
    );
  }
}
