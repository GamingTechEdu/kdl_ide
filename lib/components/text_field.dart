import 'package:flutter/services.dart';

import 'package:coocree_select_simuc/package.dart';

class KdlTextField extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final List<TextInputFormatter>? inputFormatters;
  final Widget label;

  const KdlTextField({
    this.padding = const EdgeInsets.only(bottom: 20),
    super.key,
    required this.label,
    this.inputFormatters
  });

  @override
  Widget _buildTextField() {
    return Padding(
      padding: padding,
      child: TextFormField(
        style: TextStyle(fontSize: 15),
        keyboardType: TextInputType.number,
        inputFormatters: inputFormatters,
        cursorColor: Colors.orange,
        cursorHeight: 25,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 3, color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10)),
            label: label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        validator: (value) {
          if (value == null || int.parse(value) < 10) {
            return 'O número deve ser igual a 10.';
          }

          if (value.isEmpty) {
            return 'Campo obrigatório';
          }

          return null;
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return _buildTextField();
  }
}
