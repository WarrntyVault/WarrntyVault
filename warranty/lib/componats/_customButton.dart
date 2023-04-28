import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Color(0xff5B42CF) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Color(0xff5B42CF),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Color(0xff5B42CF),
          ),
        ),
      ),
    );
  }
}


///////////////////////////////////////////////////////////////////////////////////////

class MyButtonGroup extends StatefulWidget {
  const MyButtonGroup({Key? key}) : super(key: key);

  @override
  _MyButtonGroupState createState() => _MyButtonGroupState();
}

class _MyButtonGroupState extends State<MyButtonGroup> {
  int _selectedIndex = -1;

  void _handleButtonTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyButton(
          title: "Valid",
          isSelected: _selectedIndex == 0,
          onPressed: () => _handleButtonTap(0),
        ),
        SizedBox(height: 16),
        MyButton(
          title: "Expired",
          isSelected: _selectedIndex == 1,
          onPressed: () => _handleButtonTap(1),
        ),
      ],
    );
  }
}
