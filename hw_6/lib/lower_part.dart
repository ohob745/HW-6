import 'package:flutter/material.dart';
import 'package:hw_6/databeas.dart';
import 'package:hw_6/model.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  // Create an instance of the ContactInfoGetStorge class
  ContactInfoGetStorge contactInfoGetStorge = ContactInfoGetStorge();

  @override
  Widget build(BuildContext context) {
    return 
    
     Container(color: const Color.fromARGB(255, 121, 144, 184),
       child: SizedBox(height: MediaQuery.of(context).size.height*0.45,
       width: MediaQuery.of(context).size.width*0.9,
         child: FutureBuilder(
            // Use the getContactInfoFromList method to get the list of contact information
            future: contactInfoGetStorge.getContactInfoFromList(),
            builder: (context, snapshot) {
              // Check if the snapshot has data
              if (snapshot.hasData) {
                CircularProgressIndicator();
                Future.delayed(Duration(seconds: 3));
       
                // Get the list of contact information from the snapshot
                List<ContactInfo> contactList = snapshot.data as List<ContactInfo>;
                // Return a ListView.builder widget
                return Container(decoration: BoxDecoration(border: Border.all(width: 3,color: const Color.fromARGB(255, 233, 228, 228))),
                  child: ListView.builder(
                    // Set the itemCount to the length of the contact list
                    itemCount: contactList.length,
                    // Define the itemBuilder function
                    itemBuilder: (context, index) {
                      // Get the contact information at the current index
                      ContactInfo contact = contactList[index];
                      // Return a ListTile widget with the name and email of the contact
                      return Row(
                        children: [
                             Text("name :  ${contact.name}"),
                             SizedBox(width: 20),
                             Text("email : ${contact.email}"),
                          
                        ],
                      );
                    },
                  ),
                );
              } else {
                // Return a CircularProgressIndicator widget if the snapshot has no data
                return Center(
                  child: Text("no data are save",style: TextStyle(fontSize: 40))
                  
                );
              }
            },
          ),
       ),
     );
  }
}
