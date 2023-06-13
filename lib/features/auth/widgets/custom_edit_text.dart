import 'package:ady_connect/shared/resources/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEditText extends StatefulWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final Function(String)? onChanged;
  final String? errorText;

  const CustomEditText({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.textInputAction,
    this.textInputType,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
    this.errorText,
  });

  @override
  State<CustomEditText> createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50.h,
      child: TextField(
        controller: _textController,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          hintStyle: AppTheme.textTheme.bodyMedium,
          errorText: widget.errorText,
          errorStyle: AppTheme.textTheme.bodySmall?.copyWith(
            color: Colors.red,
          ),
        ),
        style: AppTheme.textTheme.bodyMedium?.copyWith(
          color: Colors.black,
        ),
        onChanged: (value) {
          widget.onChanged!.call(value);
        },
        keyboardType: widget.textInputType ?? TextInputType.name,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        obscureText: widget.obscureText!,
      ),
    );
  }
}
