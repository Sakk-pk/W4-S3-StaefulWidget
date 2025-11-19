import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selectable Button App'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SelectButton(),
          SizedBox(height: 20),
          SelectButton(),
          SizedBox(height: 20),
          SelectButton(),
  ],
),
 
      ),
    );
  }
}

class SelectButton extends StatefulWidget{
  const SelectButton({
    super.key
  });
  @override
  State<StatefulWidget> createState() => _SelectButton();
}

class _SelectButton extends State<SelectButton> {
 bool isSelect = false;

 Color get backgroundColor => isSelect ? Colors.blue : Colors.black ;
 String get text => isSelect ? "Select" : "Not Selected";
 Color get textColor => isSelect ? Colors.black : Colors.white;

void isSelected(){
  setState(() {
    isSelect = !isSelect;
  });
}
@override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: isSelected,
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: textColor,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),        
              ),
            ),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}









