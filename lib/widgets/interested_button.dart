import 'package:flutter/material.dart';

class InterestedButton extends StatefulWidget {
  int _totalInterested = 41;
  bool _isInterested = false;

  InterestedButton({Key? key}) : super(key: key);

  @override
  State<InterestedButton> createState() => _InterestedButtonState();
}

class _InterestedButtonState extends State<InterestedButton> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        onPressed: _updateInterestedState,
        icon: Icon(widget._isInterested ? Icons.star : Icons.star_border,
            color: Colors.orange),
        splashRadius: 15.0,
      ),
      Text(widget._totalInterested.toString())
    ]);
  }

  void _updateInterestedState() {
    if (widget._isInterested) {
      setState(() {
        widget._isInterested = false;
        widget._totalInterested--;
      });
    } else {
      setState(() {
        widget._isInterested = true;
        widget._totalInterested++;
      });
    }
  }
}
