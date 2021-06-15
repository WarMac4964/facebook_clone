import 'package:facebook_ui/models/models.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;

  const ContactsList({Key? key, required this.users}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600),
                      
                ),
              ),
              Icon(Icons.search,color: Colors.grey.shade600,),
  const SizedBox(),
              Icon(Icons.search,color: Colors.grey.shade600,),
            ],
          )
        ],
      ),
    );
  }
}
