import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData? prefixIcon;
  final String labelText;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatter;
  final String? initValue;
  final bool onlyRead;

  const CustomTextField({
    super.key,
    this.prefixIcon,
    required this.labelText,
    this.isSecret = false,
    this.inputFormatter,
    this.initValue,
    this.onlyRead = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 18),
      child: TextFormField(
        readOnly: widget.onlyRead,
        initialValue: widget.initValue,
        inputFormatters: widget.inputFormatter,
        keyboardType: TextInputType.emailAddress,
        obscureText: isObscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withOpacity(1),
          prefixIcon: Icon(widget.prefixIcon),
          labelText: widget.labelText,
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: !isObscure
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off))
              : null, //const Icon(Icons.visibility),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
