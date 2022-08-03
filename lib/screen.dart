import 'package:flutter/material.dart';
import 'package:my_calculator_/Buttons/button.dart';
import 'package:my_calculator_/colors/app_colors.dart';
import 'package:my_calculator_/state_manager/provider.dart';
import 'package:provider/provider.dart';

import 'Buttons/big_button.dart';
import 'Buttons/small-button.dart';

class CalcSreen extends StatelessWidget {
  const CalcSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ThemeChanger>(context, listen: false);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Calculator",
                      style: TextStyle(
                        fontFamily: "Mukta",
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _provider.themeChange();
                      },
                      child: Consumer<ThemeChanger>(
                          builder: (BuildContext context, iconD, child) {
                        return (Icon(
                            iconD.isDark ? Icons.sunny : Icons.dark_mode));
                      }),
                    )
                  ],
                ),
              ),
              Container(
                height: h * 0.88,
                width: w,
                //color: Colors.red,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.bottomRight,
                                // color: Colors.blueGrey,
                                child: Consumer<ThemeChanger>(builder:
                                    (BuildContext context, question, child) {
                                  return (Text(
                                    question.inputval.toString(),
                                    style: const TextStyle(
                                        fontFamily: "Mukta",
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ));
                                }),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topRight,
                                // color: Colors.greenAccent,
                                child: Consumer<ThemeChanger>(builder:
                                    (BuildContext context, answer, child) {
                                  return (Text(
                                    answer.answer.toString(),
                                    style: TextStyle(
                                        fontFamily: "Mukta",
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[500]),
                                  ));
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Consumer<ThemeChanger>(
                          builder: (BuildContext context, colorD, child) {
                        return (Container(
                          alignment: Alignment.center,
                          //  color: Colors.yellow,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SmallButton(
                                    buttonTapped: () {
                                      _provider.inputValues('e');
                                    },
                                    buttonText: 'e',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  SmallButton(
                                     buttonTapped: () {
                                      _provider.inputValues('pi');
                                    },
                                    buttonText: 'pi',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  SmallButton(
                                     buttonTapped: () {
                                      _provider.inputValues('sin');
                                    },
                                    buttonText: 'sin',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  SmallButton(
                                     buttonTapped: () {
                                      _provider.inputValues('deg');
                                    },
                                    buttonText: 'deg',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('c');
                                    },
                                    buttonText: 'c',
                                    color: Colors.red[100],
                                    textColor: Colors.red,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('(');
                                    },
                                    buttonText: '(',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues(')');
                                    },
                                    buttonText: ')',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('/');
                                    },
                                    buttonText: '/',
                                    color: AppColors.operatorColor,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('7');
                                    },
                                    buttonText: '7',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('8');
                                    },
                                    buttonText: '8',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('9');
                                    },
                                    buttonText: '9',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('X');
                                    },
                                    buttonText: 'X',
                                    color: AppColors.operatorColor,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('4');
                                    },
                                    buttonText: '4',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('5');
                                    },
                                    buttonText: '5',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('6');
                                    },
                                    buttonText: '6',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('-');
                                    },
                                    buttonText: '-',
                                    color: AppColors.operatorColor,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('1');
                                    },
                                    buttonText: '1',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('2');
                                    },
                                    buttonText: '2',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('3');
                                    },
                                    buttonText: '3',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('+');
                                    },
                                    buttonText: '+',
                                    color: AppColors.operatorColor,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  BigButton(
                                     buttonTapped: () {
                                      _provider.inputValues('0');
                                    },
                                    buttonText: '0',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('.');
                                    },
                                    buttonText: '.',
                                    color: colorD.isDark
                                        ? AppColors.isDarkColor
                                        : AppColors.isLightColor,
                                  ),
                                  Button(
                                     buttonTapped: () {
                                      _provider.inputValues('=');
                                    },
                                    buttonText: '=',
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ));
                      }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                width: w / 5,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
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
