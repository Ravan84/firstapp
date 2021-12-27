import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CommonText {
  textviewWidget(
      {required String name,
      double fontSize = 15.0,
      fontWeight = FontWeight.normal,
      color = Colors.black,
      textAlign: TextAlign.left}) {
    return Text(
      name,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
      textAlign: textAlign,
    );
  }
}

class CommonSizedBox{
  sizeboxWidget({double height = 10}){
    return SizedBox(height: height,);
}

}

class CustomButton extends StatelessWidget {
  final String inputText;
  final String inputRoute;
  const CustomButton(
      {Key? key, required this.inputText, required this.inputRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.indigo.shade900,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, inputRoute);
          },
          child: CommonText().textviewWidget(
              name: inputText,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
              color: Colors.white),
        ));
  }
}

class TitleContainer extends StatelessWidget {
  final String inputText;
  const TitleContainer({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: CommonText().textviewWidget(
          name: inputText,
          textAlign: TextAlign.left,
          fontWeight: FontWeight.bold,
          fontSize: 13),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String inputText;
  const TextFieldContainer({Key? key, required this.inputText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          decoration:
              InputDecoration(border: InputBorder.none, hintText: inputText),
          keyboardType: TextInputType.text,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}

class ForMobileNumWithTitleContainer extends StatelessWidget {
  final String inputText;
  final String inputHintText;


   ForMobileNumWithTitleContainer(


      {Key? key, required this.inputText, required this.inputHintText, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleContainer(inputText: inputText),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200]),
                  child: CountryCodePicker(
                    padding: EdgeInsets.all(0),
                    initialSelection: 'IN',
                  )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                        hintText: inputHintText,
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleWithFieldContainer extends StatelessWidget {
  final String inputText;
  final String inputHintText;
  const TitleWithFieldContainer(
      {Key? key, required this.inputText, required this.inputHintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContainer(inputText: inputText),
        SizedBox(
          height: 10,
        ),
        TextFieldContainer(inputText: inputHintText),
      ],
    );
  }
}

class DescriptionContainer extends StatelessWidget {
  final String inputTitleText;
  final String inputHintText;
  const DescriptionContainer(
      {Key? key, required this.inputTitleText, required this.inputHintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContainer(
          inputText: inputTitleText,
        ),
        SizedBox(
          height: 10,
        ),
        Container(padding: EdgeInsets.only(left: 10,right: 10),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: inputHintText),
            keyboardType: TextInputType.text,
            textAlign: TextAlign.start,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}

class DropDownContainerWithTitle extends StatelessWidget {
  final String inputTitleText;
  final String inputHintText;
  const DropDownContainerWithTitle(
      {Key? key, required this.inputTitleText, required this.inputHintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleContainer(inputText: inputTitleText),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(dropdownColor: Colors.grey[100],borderRadius: BorderRadius.circular(8),
              isExpanded: true,
              items: [
                DropdownMenuItem(
                  value: 'Item 1',
                  child: Text('Item 1'),
                ),
                DropdownMenuItem(
                  value: 'Item 2',
                  child: Text('Item 2'),
                ),
                DropdownMenuItem(
                  value: 'Item 3',
                  child: Text('Item 3'),
                ),
              ],
              onChanged: (_value) {},
              hint: Text(inputHintText),
            ),
          ),
        ),
      ],
    );
  }
}
