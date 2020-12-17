import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController controller = new TextEditingController();
  double temp = 0.0;
  void calculator(String value) {
    double result = 0.0;
    double farn = double.parse(value);
    double minus = farn - 32;
    result = minus * (5 / 9);

    setState(() {
      temp = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jose Rodriguez Converter "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withAlpha(60),
                      blurRadius: 6.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Temprature Fahrenheit",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Proxmia",
                            color:
                                Theme.of(context).primaryColor.withOpacity(.8),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          if (value.isEmpty) {
                            setState(() {
                              temp = 0.0;
                            });
                          } else {
                            calculator(value);
                          }
                        },
                        controller: controller,
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Proxmia",
                            color:
                                Theme.of(context).primaryColor.withOpacity(.9),
                            fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            isDense: true,
                            prefixIconConstraints:
                                BoxConstraints(minHeight: 15),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, bottom: 05, top: 03),
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  child: Icon(CupertinoIcons.info)),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Enter here",
                            hintStyle: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.8),
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.2),
                                  width: 0.3),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.5),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withAlpha(60),
                      blurRadius: 6.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        0.0,
                        3.0,
                      ),
                    ),
                  ],
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your output in Celsius is",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Proxmia",
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        temp.toStringAsFixed(2) + " °C",
                        style: TextStyle(
                            fontSize: 45.0,
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
