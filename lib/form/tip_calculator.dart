import 'package:flutter/material.dart';
import 'package:plan_it/form/simple_input_field.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  static const Color containarColor = Color(0xffF5F8F8);
  static const Color textColor = Color(0xff232323);
  static const Color textBackColor = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffff7511);

  final totalbillController = TextEditingController();
  final tipPercentageController = TextEditingController();
  final numberOfPeopleController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Calculator'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: containarColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  const Text(
                    'Total bill',
                    style: TextStyle(
                        color: textBackColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  Text(
                    '\$ ${totalbillController.text}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Person',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: textBackColor),
                          ),
                          Text(
                            '05',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            'Tip Amount',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: textBackColor),
                          ),
                          Text(
                            '\$ 20.00',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 42,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: containarColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Text(
                    'Amount Per Person',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: textBackColor),
                  ),
                  Spacer(),
                  Text(
                    '\$ 20.00',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SimpleInputField(
              textEditingcontroller: totalbillController,
              hinttext: 'Please enter total bill',
              title: 'Total Bill',
            ),
            SimpleInputField(
              textEditingcontroller: tipPercentageController,
              hinttext: 'Please enter tip percentage',
              title: 'Tip percentage',
              icon: Icons.attach_money,
            ),
            SimpleInputField(
              textEditingcontroller: numberOfPeopleController,
              hinttext: 'Please enter number of people',
              title: 'Number of people',
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: const Color(0xff393939)),
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    child: const Text(
                      'calculate',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 35,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: clearButtonColor),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const Listwidget()),
                      // );
                    },
                    child: const Text(
                      'clear',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
