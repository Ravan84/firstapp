import 'package:firstapp/string_value.dart';
import 'package:flutter/material.dart';

import 'common.dart';

class Tiles extends StatelessWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: StringValue().tilesSellingPost,fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/profile3');
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
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  // height: 970,
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
                      Container(
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                child: Icon(
                                  Icons.cloud_upload_outlined,
                                  size: 80,
                                  color: Colors.grey[200],
                                )),
                            CommonText().textviewWidget(name: StringValue().uploadImage,fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintCategories, inputTitleText: StringValue().categories,),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputTitleText: StringValue().size, inputHintText: StringValue().hintSize),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintRequireType, inputTitleText: StringValue().requirementType,),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintGrade, inputTitleText: StringValue().grade,),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintQuantityType, inputTitleText: StringValue().quantityType,),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintCurrency, inputTitleText: StringValue().currency,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintPriceSign, inputTitleText: StringValue().price,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: CommonText().textviewWidget(
                                  name: StringValue().priceIncludingTex,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().yes,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border:
                                                Border.all(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().no,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Icon(
                                          Icons.check,
                                          size: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintFeatureColor, inputTitleText: StringValue().featureColor,),
                      SizedBox(
                        height: 20,
                      ),
                      DescriptionContainer(inputTitleText: StringValue().description, inputHintText: StringValue().hintDescription),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 45,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sanitary');
                          },
                          child: CommonText().textviewWidget(
                              name: StringValue().submit,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
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

class Sanitary extends StatelessWidget {
  const Sanitary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: StringValue().sanitarySellingPost,fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/tiles');
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
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  // height: 830,
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
                      Container(
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                child: Icon(
                                  Icons.cloud_upload_outlined,
                                  size: 80,
                                  color: Colors.grey[200],
                                )),
                            CommonText().textviewWidget(name: StringValue().uploadImage,fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintCategories, inputTitleText: StringValue().categories,),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintRequireType, inputTitleText: StringValue().requirementType,),
                      SizedBox(
                        height: 10,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintGrade, inputTitleText: StringValue().grade,),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintCurrency, inputTitleText: StringValue().currency,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintPriceSign, inputTitleText: StringValue().price,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: CommonText().textviewWidget(
                                  name: StringValue().priceIncludingTex,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().yes,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().no,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                        child: Icon(
                                          Icons.check,
                                          size: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintFeatureColor, inputTitleText: StringValue().featureColor,),
                      SizedBox(
                        height: 20,
                      ),
                      DescriptionContainer(inputTitleText: StringValue().description, inputHintText: StringValue().hintDescription,),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(inputText: StringValue().submit, inputRoute: '/bathware'),
                      SizedBox(
                        height: 15,
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

class Bathware extends StatelessWidget {
  const Bathware({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: StringValue().bathwareSellingPost,fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/sanitary');
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
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  // height: 690,
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
                      Container(
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                child: Icon(
                                  Icons.cloud_upload_outlined,
                                  size: 80,
                                  color: Colors.grey[200],
                                )),
                            CommonText().textviewWidget(name: StringValue().uploadImage,fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintCategories, inputTitleText: StringValue().categories,),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().selectUnit, inputTitleText: StringValue().selectUnit,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintQuantity, inputTitleText: StringValue().quantity,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [SizedBox(width: 10,),
                          Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(5),
                              border:
                              Border.all(color: Colors.grey)),
                        ),
                          SizedBox(width: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: CommonText().textviewWidget(
                                name: StringValue().qualityAsRequire,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintCurrency, inputTitleText: StringValue().currency,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintPriceSign, inputTitleText: StringValue().price,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: CommonText().textviewWidget(
                                  name: StringValue().priceIncludingTex,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().yes,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().no,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                        child: Icon(
                                          Icons.check,
                                          size: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DescriptionContainer(inputTitleText: StringValue().description, inputHintText: StringValue().hintDescription),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(inputRoute: '/other', inputText: StringValue().submit,),
                      SizedBox(
                        height: 15,
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

class OtherProduct extends StatelessWidget {
  const OtherProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText().textviewWidget(name: StringValue().otherProductSellingPost,fontWeight: FontWeight.bold),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushNamed(context, '/bathware');
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
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  // height: 705,
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
                      Container(
                        child: Column(
                          children: [
                            Container(
                                height: 80,
                                child: Icon(
                                  Icons.cloud_upload_outlined,
                                  size: 80,
                                  color: Colors.grey[200],
                                )),
                            CommonText().textviewWidget(name: StringValue().uploadImage,fontWeight: FontWeight.bold),
                          ],
                        ),
                      ),
                      DropDownContainerWithTitle(inputHintText: StringValue().hintCategories, inputTitleText: StringValue().categories,),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().selectUnit, inputTitleText: StringValue().selectUnit,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintQuantity, inputTitleText: StringValue().quantity,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(5),
                                border:
                                Border.all(color: Colors.grey)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: CommonText().textviewWidget(
                                name: StringValue().qualityAsRequire,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintCurrency, inputTitleText: StringValue().currency,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropDownContainerWithTitle(inputHintText: StringValue().hintPriceSign, inputTitleText: StringValue().price,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: CommonText().textviewWidget(
                                  name: StringValue().priceIncludingTex,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().yes,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 60,
                                  child: Row(
                                    children: [
                                      CommonText().textviewWidget(
                                          name: StringValue().no,
                                          fontWeight: FontWeight.bold),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        alignment: Alignment.topCenter,
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            border:
                                            Border.all(color: Colors.grey)),
                                        child: Icon(
                                          Icons.check,
                                          size: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DescriptionContainer(inputTitleText: StringValue().description, inputHintText: StringValue().hintDescription,),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(inputText: StringValue().submit, inputRoute: '/profile1'),
                      SizedBox(
                        height: 15,
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