import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  final Function onPressed;
  final bool isLoading;

  const FullButton({Key key, @required this.onPressed, this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPressed,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: !isLoading
            ? const Text(
                'Checkout',
                style: TextStyle(fontSize: 24, color: Colors.white),
              )
            : CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
        color: Color(0xFFFF276a),
      ),
    );
  }
}
