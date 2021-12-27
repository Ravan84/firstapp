import 'package:firstapp/common.dart';
import 'package:firstapp/string_value.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: 'Personal Information'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Personal Information', fontSize: 13),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 1',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                name: 'Company Information',
                                fontSize: 13,
                              ),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 2',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Verification (Optional)',
                                  fontSize: 13),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Final Step',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:
                                  Image(image: AssetImage('images/dhaval.jpg')),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Image(
                                    image: AssetImage('images/editpic.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CommonText().textviewWidget(
                                    name: 'Change Profile',
                                    fontWeight: FontWeight.bold),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().name,
                          inputHintText: StringValue().hintName),
                      SizedBox(
                        height: 15,
                      ),
                      ForMobileNumWithTitleContainer(
                          inputText: StringValue().mobileNum,
                          inputHintText: StringValue().hintMobileNum),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CommonText().textviewWidget(
                              name: StringValue().isThisWhatsappNum,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ForMobileNumWithTitleContainer(
                          inputText: StringValue().whatsappNum,
                          inputHintText: StringValue().hintMobileNum),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().email,
                          inputHintText: StringValue().hintEmail),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(
                              inputHintText: StringValue().state,
                              inputTitleText: StringValue().state,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(
                              inputHintText: StringValue().city,
                              inputTitleText: StringValue().city,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          inputText: StringValue().next1, inputRoute: '/profile2'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: 'Personal Information'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/profile1');
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Personal Information',
                                  color: Colors.white,
                                  fontSize: 13),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 1',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Company Information', fontSize: 13),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 2',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                name: 'Verification (Optional)',
                                fontSize: 13,
                              ),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Final Step',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(
                              inputHintText: StringValue().hintRole,
                              inputTitleText: StringValue().role,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(
                              inputHintText: StringValue().hintSubRole,
                              inputTitleText: StringValue().subRole,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DropDownContainerWithTitle(
                        inputHintText: StringValue().mainCategories,
                        inputTitleText: StringValue().hintMainCategories,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().categories,
                          inputHintText: StringValue().hintCategories),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().companyName,
                          inputHintText: StringValue().hintCompanyName),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().companyWebsite,
                          inputHintText: StringValue().hintCompanyWebsite),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().companyAddress,
                          inputHintText: StringValue().hintCompanyAddress),
                      SizedBox(
                        height: 15,
                      ),
                      TitleWithFieldContainer(
                          inputText: StringValue().gstNum,
                          inputHintText: StringValue().hintGstNum),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          inputText: StringValue().next2, inputRoute: '/profile3'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Profile3 extends StatelessWidget {
  const Profile3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText()
            .textviewWidget(name: 'Personal Information', color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/profile2');
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Personal Information',
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 1',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Company Information',
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Step 2',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Verification (Optional)',
                                  fontSize: 13),
                            ),
                            Container(
                              width: 100,
                              child: CommonText().textviewWidget(
                                  name: 'Final Step',
                                  color: Colors.grey,
                                  fontSize: 9),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 0,
                          blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    children: [
                      DropDownContainerWithTitle(inputHintText: StringValue().hintCategories, inputTitleText: StringValue().proofDocuments,),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: CommonText().textviewWidget(
                            name: 'Proof Image',
                            fontSize: 13,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.orange[50]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.photo_library_outlined,
                                color: Colors.orange,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CommonText().textviewWidget(
                                name: 'Upload Image',
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(Icons.arrow_forward),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 2,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: CommonText().textviewWidget(
                            name: ' Shop Front Image',
                            fontSize: 13,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.orange[50]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.photo_library_outlined,
                                color: Colors.orange,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CommonText().textviewWidget(
                                name: 'Upload Image',
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                          inputText: StringValue().completed, inputRoute: '/tiles'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
