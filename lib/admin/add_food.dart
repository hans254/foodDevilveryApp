import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/service/database.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class Addfood extends StatefulWidget {
  const Addfood({super.key});

  @override
  State<Addfood> createState() => _AddfoodState();
}

class _AddfoodState extends State<Addfood> {
  final List<String> items = ['Ice-cream', 'Burger', 'Salad', 'Pizza'];
  String? value;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController detailcontroller = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? selectImage;

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);

    selectImage = File(image!.path);
    setState(() {
      
    });
  }

  uploadItem()async{
    if (
      selectImage!= null &&
      namecontroller.text != "" &&
      pricecontroller.text != "" &&
      detailcontroller.text != ""
      ) {
      String addId = randomAlphaNumeric(10);
      Reference firebaseStorageRef = 
        FirebaseStorage.instance.ref().child("blogImages").child(addId);

      final UploadTask task = firebaseStorageRef.putFile(selectImage!);

      var downloadUrl = await(await task).ref.getDownloadURL();

      Map<String, dynamic> addItem = {
        "Image": downloadUrl,
        "Name": namecontroller.text,
        "Price": pricecontroller.text,
        "Detail": detailcontroller.text,
      };

      await DatabaseMethods().addFoodItem(addItem, value!).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Food Item has been added Successfully",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.black),
        ),
        centerTitle: true,
        title: const Text(
          "Add Item",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Upload the Item Picture",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: GestureDetector(
                  onTap: getImage,
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: selectImage == null
                          ? const Icon(Icons.camera_alt_outlined,
                              size: 50, color: Colors.black)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.file(
                                selectImage!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Text("Item Name", style: Appwidget.currentBoldTextFieldStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffececf8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    hintText: "Enter Item Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Text("Item Price", style: Appwidget.currentBoldTextFieldStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffececf8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: pricecontroller,
                  decoration: const InputDecoration(
                    hintText: "Enter Item Price",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Text("Item Detail", style: Appwidget.currentBoldTextFieldStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffececf8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: detailcontroller,
                  decoration: const InputDecoration(
                    hintText: "Enter Item Detail",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Text("Select Category",
                  style: Appwidget.currentBoldTextFieldStyle()),
              const SizedBox(height: 10.0),
              DropdownButton<String>(
                items: items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: const TextStyle(fontSize: 18.0)),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                hint: const Text("Select Category"),
                value: value,
              ),
              const SizedBox(height: 30.0),
              Center(
                child: GestureDetector(
                  onTap: uploadItem,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
