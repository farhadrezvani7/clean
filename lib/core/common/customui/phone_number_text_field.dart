import 'package:clean/core/common/res/strings.dart';
import 'package:clean/core/common/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberTextField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChanged;
  final String? errorText;

  const PhoneNumberTextField({
    this.textEditingController,
    this.onChanged,
    this.errorText,
    super.key,
  });

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
      maxLength: 11,
      maxLines: 1,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: widget.onChanged,
      textAlign: TextAlign.center,
      style: TextStyles.normal,
      decoration: InputDecoration(
        errorText: widget.errorText,
        hintText: PHONE_NUMBER_HINT,
        counterText: '',
      ),
    );
  }
}
