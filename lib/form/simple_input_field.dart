import 'package:flutter/material.dart';

class SimpleInputField extends StatefulWidget {
  final TextEditingController textEditingcontroller;

  final String title;
  final String hinttext;

  final IconData? icon;

  const SimpleInputField({
    super.key,
    required this.textEditingcontroller,
    required this.title,
    required this.hinttext,
    this.icon,
  });

  @override
  State<SimpleInputField> createState() => _SimpleInputFieldState();
}

class _SimpleInputFieldState extends State<SimpleInputField> {
  static const Color containarColor = Color(0xffF5F8F8);
  static const Color textColor = Color(0xff232323);
  static const Color textBackColor = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffff7511);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: textColor)),
        const SizedBox(height: 5),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: widget.textEditingcontroller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            fillColor: containarColor,
            filled: true,
            hintText: widget.hinttext,
            hintStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: textBackColor),
            suffixIcon: widget.icon != null
                ? const Icon(
                    Icons.attach_money,
                    color: textColor,
                  )
                : const Text(''),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onFieldSubmitted: (value) {
            if (value.isEmpty) {
              widget.textEditingcontroller.text = '0.0';
            }
            setState(() {});
          },
          onChanged: (value) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
