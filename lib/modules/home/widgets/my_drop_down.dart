import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/app_colors.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  List<String> items = ['All India', 'New Delhi', 'Mumbai','Gurgaon','Noida'];
  String selectedValue = 'All India';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: SizedBox(),
      value: selectedValue,
      style: TextStyle(color: AppColor.myOrange,fontSize: 12, fontWeight: FontWeight.w600),
      iconEnabledColor: AppColor.myOrange,
      icon: Icon(Icons.keyboard_arrow_down_rounded,color: AppColor.myOrange,),
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
