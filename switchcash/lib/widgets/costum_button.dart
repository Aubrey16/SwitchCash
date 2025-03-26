import 'package:flutter/material.dart';
import 'package:switchcash/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
      ),
      child: Text(
        text,
        style: TextStyle(color : AppColors.textColor),
      ),
    );
  }
}


class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String? SelectedItems;
  final ValueChanged<String?> onChanged;

  CustomDropdown({required this.items,required this.SelectedItems,required this.onChanged});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();

}

class _CustomDropdownState extends State<CustomDropdown> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.SelectedItems!;
  }
}
  