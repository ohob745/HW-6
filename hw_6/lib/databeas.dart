import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:hw_6/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class ContactInfoGetStorge {
  static const String key = 'task_managers';
  List<ContactInfo> allContactInfo = [];

  final box = GetStorage();

  ContactInfoGetStorge() {
    getContactInfoFromList();
    
  }




  addContactInfoToList({required String name,required String email}) async {
    ContactInfo contactInfo = ContactInfo(name: name, email: email);
    allContactInfo.add(contactInfo);

    List encodableList = [];
    for (var element in allContactInfo) {
      encodableList.add(element.toMap());
    }

    await box.write("allContactInfo", jsonEncode(encodableList));
  }
  getContactInfoFromList() async {
    List decodableList = jsonDecode(box.read("allContactInfo"));
    for (var element in decodableList) {
      ContactInfo contactInfo = ContactInfo.fromMap(element);
      allContactInfo.add(contactInfo);
    }
    // print(allContactInfo);
    return allContactInfo;}
deleteContactInfoFromList(){
  box.erase();
}

  }


