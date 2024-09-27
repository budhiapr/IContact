import 'package:flutter/material.dart';
import 'package:i_contact/models/contact_model.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:i_contact/utils/theme_app_colors.dart';

class ContactCardWidgetComponent extends StatelessWidget {
  final ContactModel contact;
  final bool isCurrentUser;
  const ContactCardWidgetComponent(
      {super.key, required this.contact, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 8),
            CircleAvatar(
              radius: 30,
              backgroundColor: ThemeAppColors.blue,
              child: Text(
                "${contact.firstName[0]}${contact.lastName[0]}",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${contact.firstName} ${contact.lastName} ",
                    style: const TextStyle(
                      color: ThemeAppColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (isCurrentUser)
                    const TextSpan(
                      text: Constants.LABEL_YOU,
                      style: TextStyle(
                        color: ThemeAppColors.darkGray,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
