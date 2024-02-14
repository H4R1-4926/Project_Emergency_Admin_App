import 'package:emergency_admin_app/Application/Pass/pass_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class PassWordTextField extends StatelessWidget {
  const PassWordTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
  });

  final String label;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: BlocBuilder<PassBloc, PassState>(
        builder: (context, state) {
          return TextFormField(
            validator: MultiValidator(
                [RequiredValidator(errorText: 'This field is required')]),
            controller: controller,
            obscureText: state.toggle,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      if (state.toggle) {
                        context.read<PassBloc>().add(const Pressed());
                      } else if (!state.toggle) {
                        context.read<PassBloc>().add(const Unpressed());
                      }
                    },
                    icon: Icon(state.toggle
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined)),
                label: Text(label, style: GoogleFonts.roboto()),
                hintText: hintText,
                hintStyle: GoogleFonts.roboto(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          );
        },
      ),
    );
  }
}

class NormalTextField extends StatelessWidget {
  const NormalTextField({
    super.key,
    required this.keyboardType,
    required this.label,
    required this.hintText,
    this.controller,
  });

  final TextInputType keyboardType;
  final String label;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        validator: MultiValidator(
            [RequiredValidator(errorText: 'This field is required')]),
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            label: Text(label, style: GoogleFonts.roboto()),
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
