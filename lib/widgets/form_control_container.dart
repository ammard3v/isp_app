import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demo_isp_app/widgets/app_styles.dart';

class FormControlContainer extends StatefulWidget {
  const FormControlContainer({
    super.key,
    this.prefixImg,
    required this.obscureText,
    required this.hintText,
    required this.controller,
    this.showVisibilityToggle = true,
    this.maxLines = 1,
  });

  final bool obscureText;
  final String hintText;
  final TextEditingController controller;
  final bool showVisibilityToggle;
  final String? prefixImg;
  final int maxLines;

  @override
  State<FormControlContainer> createState() => _FormControlContainerState();
}

class _FormControlContainerState extends State<FormControlContainer> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppStyles.primaryGradient,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),
        child: TextFormField(
          controller: widget.controller,
          obscureText: isObscured,
          maxLines: widget.maxLines,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.red,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.white70),
            prefixIcon: widget.prefixImg != null
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      widget.prefixImg!,
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                : null,
            suffixIcon: (widget.obscureText && widget.showVisibilityToggle)
                ? IconButton(
                    icon: Icon(
                      isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                  )
                : null,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ),
    );
  }
}
