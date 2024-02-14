import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Presentation/Widgets/textfield.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedEmPlusPage extends StatelessWidget {
  DetailedEmPlusPage(
      {super.key,
      required this.data,
      required this.checkOnPressed,
      required this.deleteOnPressed});

  final QueryDocumentSnapshot<Map<String, dynamic>> data;
  final void Function() checkOnPressed;
  final void Function() deleteOnPressed;
  final TextEditingController completeController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController secondaryPhoneController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightRed,
      appBar: AppBar(
        title: Text(
          'Details',
          style: GoogleFonts.montserrat(
              color: kWhite, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        automaticallyImplyLeading: true,
        foregroundColor: kLightRed,
        backgroundColor: kDarkRed,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: BoxDecoration(
              color: kWhite, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 12, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name:',
                    style: GoogleFonts.poppins(
                        color: kDarkRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Center(
                    child: Text(
                      data['name'],
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Phone:',
                    style: GoogleFonts.poppins(
                        color: kDarkRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Center(
                    child: Text(
                      data['phone'],
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Location:',
                    style: GoogleFonts.poppins(
                        color: kDarkRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Center(
                    child: Text(
                      data['location'],
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'secondary phone:',
                    style: GoogleFonts.poppins(
                        color: kDarkRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Center(
                    child: Text(
                      data['secondary_phone'],
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'email:',
                    style: GoogleFonts.poppins(
                        color: kDarkRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Center(
                    child: Text(
                      data['email'],
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          dialoguBox(
                              context: context, onpressed: checkOnPressed);
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(kDarkRed)),
                        child: Text(
                          'Check',
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold, color: kWhite),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  'Delete',
                                  style: GoogleFonts.lato(
                                    color: kDarkRed,
                                  ),
                                ),
                                content: Text(
                                  'Are you sure to delete it?',
                                  style: GoogleFonts.lato(
                                    color: kDarkRed,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: deleteOnPressed,
                                      child: Text(
                                        'Yes',
                                        style: GoogleFonts.lato(
                                          color: kDarkRed,
                                        ),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'No',
                                        style: GoogleFonts.lato(
                                          color: kDarkRed,
                                        ),
                                      )),
                                ],
                              );
                            },
                          );
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(kDarkRed)),
                        child: Text('Delete',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, color: kWhite)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  dialoguBox(
      {required BuildContext context, required void Function() onpressed}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Completed?',
            style: GoogleFonts.lato(color: kDarkRed),
          ),
          content: SizedBox(
            height: 350,
            width: 100,
            child: Column(
              children: [
                Text('Fill this', style: GoogleFonts.lato(color: kDarkRed)),
                Flexible(
                  child: NormalTextField(
                      controller: completeController,
                      keyboardType: TextInputType.text,
                      label: 'Completed?',
                      hintText: 'Yes / No'),
                ),
                Flexible(
                  child: NormalTextField(
                      controller: reasonController,
                      keyboardType: TextInputType.text,
                      label: 'Reason',
                      hintText: 'Write the reason'),
                ),
                Flexible(
                  child: NormalTextField(
                      controller: secondaryPhoneController,
                      keyboardType: TextInputType.phone,
                      label: 'Secondary Phone',
                      hintText: 'add another Phone Number'),
                ),
                Flexible(
                  child: NormalTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      label: 'Email',
                      hintText: 'email'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: onpressed,
              child: Text('Confirm',
                  style: GoogleFonts.lato(
                    color: kDarkRed,
                  )),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel',
                  style: GoogleFonts.lato(
                    color: kDarkRed,
                  )),
            ),
          ],
        );
      },
    );
  }
}
