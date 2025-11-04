import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  List<String> items = ['All India', 'Banana', 'Mango'];
  String selectedValue = 'Apple';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: SizedBox(),
      value: selectedValue,
      style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.w600),
      iconEnabledColor: Colors.deepOrange,
      // icon: Icon(Icons.keyboard_arrow_down, color: Colors.orangeAccent),
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),

      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }
}
