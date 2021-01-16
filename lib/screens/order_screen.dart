import 'package:cosmetics_shop/database/constants.dart';
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
  String destinationCity = "Brăila";
  String destinationCountry = "Romania";
  String shippingMethod = "Standard Delivery";

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(screenSize),
      body: SafeArea(
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
                      color: Colors.black87,
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
            Container(
              height: screenSize.height * 0.105,
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
                            top: defaultPadding / 3,
                          ),
                          child: Text(
                            "City",
                            style: TextStyle(
                              fontFamily: "Arial",
                              fontSize: screenSize.width * 0.0325,
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
                          items: <String>[
                            "Brăila",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: screenSize.width * 0.045,
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
                    child: TextField(
                      focusNode: _focusNodeZip,
                      onSubmitted: (string) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        labelText: "Zip Code",
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
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.105,
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
                      top: defaultPadding / 3,
                    ),
                    child: Text(
                      "Country",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: screenSize.width * 0.0325,
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
                    items: <String>[
                      "Romania",
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: screenSize.width * 0.045,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.105,
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
                      top: defaultPadding / 3,
                    ),
                    child: Text(
                      "Shipping Method",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: screenSize.width * 0.0325,
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
                        destinationCountry = value;
                      });
                    },
                    items: <String>[
                      "Standard Delivery",
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: screenSize.width * 0.045,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
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
