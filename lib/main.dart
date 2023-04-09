
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepperexample/screen/provider/stepper_provider.dart';
import 'package:stepperexample/screen/view/stepper_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StepperProvider()
          ,),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => StepperScreen(),
        },
      ),
    ),
  );
}