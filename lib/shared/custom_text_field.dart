
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.hintText, this.isPassword = false, this.controller, this.keyboardType, this.onChanged});
final String hintText;
final bool isPassword;
final TextEditingController? controller;
final TextInputType? keyboardType;
// final String? Function(String?)? validator;
final void Function(String)? onChanged;


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText = true;
  
  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                    controller: widget.controller,
                    keyboardType: widget.keyboardType,
                    onChanged: widget.onChanged,
                    obscureText: _obscureText,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please enter the ${widget.hintText.toLowerCase()}';
                      }
                      return null;
                    },
                       cursorColor: Colors.red,
                      decoration: InputDecoration(
                        suffixIcon: widget.isPassword ? GestureDetector(
                          onTap: togglePasswordVisibility,
                          child: Icon(
                            _obscureText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                            color: Colors.grey,
                          ),
                        ) : null, 
                      filled: true,
                      fillColor: Colors.white,
                      hintText: widget.hintText,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      
                    ),
                  );
  }
}