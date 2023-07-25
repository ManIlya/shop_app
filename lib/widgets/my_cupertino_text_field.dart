import 'package:flutter/cupertino.dart';

class MyCupertinoTextField extends StatelessWidget {
  const MyCupertinoTextField({super.key, this.placeholder, this.controller});
  final String? placeholder;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: CupertinoTextField(

        decoration: const BoxDecoration(
          color: CupertinoColors.lightBackgroundGray,
        ),
        controller: controller,
        placeholder: placeholder,
        placeholderStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff595959),
          height: 21/16,
        ),
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 18),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 21/16,
        ),
      ),
    );
  }
}
