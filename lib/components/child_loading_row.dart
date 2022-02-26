import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class ChildLoadingRow extends StatelessWidget {
  const ChildLoadingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircularProgressIndicator(
          color: Colors.white,
        ),
        SizedBox(
          width: 24,
        ),
        Text('Please Wait...', style: kTextStyle),
      ],
    );
  }
}
