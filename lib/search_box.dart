import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
