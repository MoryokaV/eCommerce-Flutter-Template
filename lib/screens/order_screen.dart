import 'package:cosmetics_shop/database/constants.dart';
import 'package:cosmetics_shop/screens/congrats_screen.dart';
import 'package:flutter/material.dart';
import 'package:cosmetics_shop/templateLayer.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  FocusNode _focusNodeName = new FocusNode();
  FocusNode _focusNodeAddress = new FocusNode();
  FocusNode _focusNodeZip = new FocusNode();
  FocusNode _focusNodeEmail = new FocusNode();
  FocusNode _focusNodePhone = new FocusNode();
  FocusNode _focusNodeDetails = new FocusNode();

  String destinationCity = destinationCities[0];
  String destinationCountry = destinationCountries[0];
  String shippingMethod = deliveryOptions[0];
  bool saveDetails = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    var textStyle = TextStyle(
      fontSize: screenSize.height * 0.025,
    );
    return Scaffold(
      appBar: buildAppBar(screenSize),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
                defaultPadding / 1.25,
              ),
              child: Row(
                children: [
                  Text(
                    "Shipping",
                    style: TextStyle(
                      fontSize: screenSize.width * 0.085,
                      color: Colors.black54,
                      fontFamily: "Robot-Black",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.08,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
                bottom: defaultPadding / 4,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Center(
                child: TextField(
                  focusNode: _focusNodeName,
                  onSubmitted: (string) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: screenSize.width * 0.05,
                      color: _focusNodeName.hasFocus
                          ? Colors.black54
                          : Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.08,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
                bottom: defaultPadding / 4,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Center(
                child: TextField(
                  focusNode: _focusNodeEmail,
                  onSubmitted: (string) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Email address",
                    labelStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: screenSize.width * 0.05,
                      color: _focusNodeZip.hasFocus
                          ? Colors.black54
                          : Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.08,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
                bottom: defaultPadding / 4,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  focusNode: _focusNodePhone,
                  onSubmitted: (string) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Phone Number (+40)",
                    labelStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: screenSize.width * 0.05,
                      color: _focusNodeZip.hasFocus
                          ? Colors.black54
                          : Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.08,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
                bottom: defaultPadding / 4,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Center(
                child: TextField(
                  focusNode: _focusNodeAddress,
                  onSubmitted: (string) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Address",
                    labelStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: screenSize.width * 0.05,
                      color: _focusNodeAddress.hasFocus
                          ? Colors.black54
                          : Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height * 0.115,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width * 0.425,
                    padding: EdgeInsets.only(
                      left: defaultPadding / 1.5,
                      right: defaultPadding / 1.5,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 6,
                          offset: Offset(-1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: defaultPadding / 4,
                            bottom: 0,
                          ),
                          child: Text(
                            "City",
                            style: TextStyle(
                              fontFamily: "Arial",
                              fontSize: screenSize.width *
                                  screenSize.height *
                                  0.00004,
                            ),
                          ),
                        ),
                        DropdownButton(
                          elevation: 16,
                          isExpanded: true,
                          underline: SizedBox(),
                          value: destinationCity,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: screenSize.width * 0.075,
                          ),
                          onChanged: (String value) {
                            setState(() {
                              destinationCity = value;
                            });
                          },
                          items: destinationCities
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: screenSize.width *
                                      screenSize.height *
                                      0.000055,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.425,
                    margin: EdgeInsets.only(
                      top: defaultPadding / 1.5,
                    ),
                    padding: EdgeInsets.only(
                      left: defaultPadding / 1.5,
                      right: defaultPadding / 1.5,
                      bottom: defaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 6,
                          offset: Offset(-1, 1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextField(
                        focusNode: _focusNodeZip,
                        onSubmitted: (string) {
                          FocusScope.of(context).unfocus();
                        },
                        decoration: InputDecoration(
                          labelText: "* Zip Code",
                          labelStyle: TextStyle(
                            fontFamily: "Arial",
                            fontSize:
                                screenSize.width * screenSize.height * 0.00005,
                            color: _focusNodeZip.hasFocus
                                ? Colors.black54
                                : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.115,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: defaultPadding / 4,
                      bottom: 0,
                    ),
                    child: Text(
                      "Country",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize:
                            screenSize.width * screenSize.height * 0.00004,
                      ),
                    ),
                  ),
                  DropdownButton(
                    elevation: 16,
                    underline: SizedBox(),
                    isExpanded: true,
                    value: destinationCountry,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: screenSize.width * 0.075,
                    ),
                    onChanged: (String value) {
                      setState(() {
                        destinationCountry = value;
                      });
                    },
                    items: destinationCountries
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize:
                                screenSize.width * screenSize.height * 0.00005,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.115,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 1.5,
                right: defaultPadding / 1.5,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: defaultPadding / 4,
                      bottom: 0,
                    ),
                    child: Text(
                      "Shipping Method",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize:
                            screenSize.width * screenSize.height * 0.00004,
                      ),
                    ),
                  ),
                  DropdownButton(
                    elevation: 16,
                    underline: SizedBox(),
                    isExpanded: true,
                    value: shippingMethod,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: screenSize.width * 0.075,
                    ),
                    onChanged: (String value) {
                      setState(() {
                        shippingMethod = value;
                      });
                    },
                    items: deliveryOptions
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize:
                                screenSize.width * screenSize.height * 0.00005,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.1,
              width: screenSize.width * 0.9,
              margin: EdgeInsets.only(
                top: defaultPadding / 1.5,
              ),
              padding: EdgeInsets.only(
                left: defaultPadding / 2,
                right: defaultPadding / 2,
              ),
              child: Center(
                child: TextField(
                  focusNode: _focusNodeDetails,
                  onSubmitted: (string) {
                    FocusScope.of(context).unfocus();
                  },
                  style: textStyle,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey[400],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    labelText: "* Personal Notes",
                    labelStyle: TextStyle(
                      fontFamily: "Arial",
                      fontSize: screenSize.width * 0.0425,
                      color: _focusNodeAddress.hasFocus
                          ? Colors.black54
                          : Colors.black54,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 6,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
            ),
            CheckboxListTile(
              title: Text(
                "Save these details for faster checkout?",
                style: TextStyle(
                  fontFamily: "Arial",
                  color: Colors.black54,
                  fontSize: screenSize.width * 0.04,
                ),
              ),
              value: saveDetails,
              onChanged: (bool newValue) {
                setState(() {
                  saveDetails = newValue;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
            GestureDetector(
              onTap: () {
                //send message
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CongratsScreen(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: defaultPadding / 2,
                  bottom: defaultPadding,
                ),
                height: screenSize.height * 0.07,
                width: screenSize.width * 0.7,
                child: Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(
                      fontFamily: "Roboto-Bold",
                      fontSize: screenSize.width * 0.06,
                      color: primaryColor,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    defaultPadding * 2,
                  ),
                  color: accentColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 2.5,
                      offset: Offset(-1, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar(Size screenSize) {
    return AppBar(
      backgroundColor: accentColor,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      elevation: 5,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: screenSize.width * 0.06,
            color: primaryColor,
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            "Checkout",
            style: TextStyle(
              fontFamily: "Roboto-Medium",
              color: primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: screenSize.width * 0.055,
            ),
          ),
          IconButton(
            icon: Icon(Icons.home),
            iconSize: screenSize.width * 0.06,
            color: primaryColor,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TemplateLayer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
