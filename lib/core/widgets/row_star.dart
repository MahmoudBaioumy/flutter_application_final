import 'package:flutter/material.dart';

class Rowstar extends StatelessWidget {
  const Rowstar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: Colors.blue[700],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.blue[700],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.blue[700],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.blue[700],
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.blue[700],
        ),
      ],
    );
  }
}
