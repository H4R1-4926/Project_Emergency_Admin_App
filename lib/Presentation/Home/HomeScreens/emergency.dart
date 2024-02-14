import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_admin_app/Core/colors.dart';
import 'package:emergency_admin_app/Infrastructure/Emergency/emergency_repository.dart';
import 'package:emergency_admin_app/Presentation/Detailed%20Page/detail_view_page.dart';
import 'package:emergency_admin_app/Presentation/Home/home.dart';

import 'package:emergency_admin_app/Presentation/Widgets/drawer.dart';
import 'package:emergency_admin_app/Presentation/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class EmergencyEmPage extends StatelessWidget {
  EmergencyEmPage({super.key});
  final TextEditingController completeController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController secondaryPhoneController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        foregroundColor: kLightRed,
        title: Text(
          'Emergency Cases',
          style: GoogleFonts.montserrat(
              color: kWhite, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kDarkRed,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: Container(
              height: MediaQuery.of(context).size.height / 1.2,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(15)),
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('emergency')
                    .orderBy(
                      'date',
                      descending: true,
                    )
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: kRed,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Icon(
                        Icons.wifi,
                        color: kRed,
                      ),
                    );
                  } else if (snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text(
                        'No Cases',
                        style: GoogleFonts.lato(
                            color: kRed,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 5),
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            final data = snapshot.data!.docs[index];

                            return GestureDetector(
                              onTap: () => Get.to(() => DetailPage(
                                  data: data,
                                  checkOnPressed: () {
                                    EmergencyController().completedDoc(
                                        data.id,
                                        emailController.text.trim(),
                                        completeController.text.trim(),
                                        reasonController.text.trim(),
                                        secondaryPhoneController.text.trim());
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
                                        ),
                                        (route) => false);

                                    Future.delayed(const Duration(seconds: 1),
                                        () {
                                      EmergencyController().deleteDoc(data.id);
                                    });
                                  },
                                  deleteOnPressed: () {
                                    EmergencyController().deleteDoc(data.id);
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
                                        ),
                                        (route) => false);
                                  })),
                              child: Card(
                                color: Colors.red[100],
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data['name'],
                                            style: GoogleFonts.lato(
                                                fontSize: 20,
                                                color: kBlack,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(data['phone'],
                                              style: GoogleFonts.lato(
                                                  fontSize: 18,
                                                  color: kBlack,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                dialoguBox(
                                                    context: context,
                                                    onpressed: () {
                                                      EmergencyController()
                                                          .completedDoc(
                                                              data.id,
                                                              emailController
                                                                  .text
                                                                  .trim(),
                                                              completeController
                                                                  .text
                                                                  .trim(),
                                                              reasonController
                                                                  .text
                                                                  .trim(),
                                                              secondaryPhoneController
                                                                  .text
                                                                  .trim());
                                                      Navigator.pop(context);

                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 1), () {
                                                        EmergencyController()
                                                            .deleteDoc(data.id);
                                                      });
                                                    });
                                              },
                                              icon: const Icon(
                                                Icons.check,
                                                color: kBlack,
                                              )),
                                          IconButton(
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
                                                            onPressed: () {
                                                              EmergencyController()
                                                                  .deleteDoc(
                                                                      data.id);
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Text(
                                                              'Yes',
                                                              style: GoogleFonts
                                                                  .lato(
                                                                color: kDarkRed,
                                                              ),
                                                            )),
                                                        TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Text(
                                                              'No',
                                                              style: GoogleFonts
                                                                  .lato(
                                                                color: kDarkRed,
                                                              ),
                                                            )),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.delete_outlined,
                                                color: kDarkRed,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 10,
                              ),
                          itemCount: snapshot.data!.docs.length),
                    );
                  }
                },
              )),
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
