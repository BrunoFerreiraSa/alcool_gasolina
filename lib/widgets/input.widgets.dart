import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// ignore: must_be_immutable
class Input extends StatefulWidget {
var label = "";
var ctrl = new MoneyMaskedTextController();

Input({
  @required this.label,
  @required this.ctrl,
});

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                controller: widget.ctrl,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "Big Shoulders Display",
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              ),
            ],
          );
  }
}