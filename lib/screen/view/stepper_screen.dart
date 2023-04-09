import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepperexample/screen/provider/stepper_provider.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  StepperProvider? stepperProviderT;
  StepperProvider? stepperProviderF;

  @override
  Widget build(BuildContext context) {
    stepperProviderT = Provider.of(context, listen: true);
    stepperProviderF = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper App"),
        ),
        body: Stepper(
          onStepTapped: (value) {
            stepperProviderF!.jump(value);
          },
          steps: [
            Step(
                title: Text("Profile Picture"),
                content: ListTile(
                  title: Text("My Profile"),
                  subtitle: Text("Hirpara"),
                ),
                isActive: true),
            Step(
                title: Text("Name"),
                content: ListTile(
                  title: Text("Name"),
                  subtitle: Text("Devik Hirpara"),
                ),
                isActive: true),
            Step(
                title: Text("Phone"),
                content: ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text("9016304915"),
                ),
                isActive: true),
            Step(
                title: Text("Email"),
                content: ListTile(
                  title: Text("Email"),
                  subtitle: Text("devik1810@gmail.com"),
                ),
                isActive: true),
            Step(
                title: Text("DOB"),
                content: ListTile(
                  title: Text("Date of Birth"),
                  subtitle: Text("10-12-2003"),
                ),
                isActive: true),
            Step(
                title: Text("Gender"),
                content: ListTile(
                  title: Text("Gender"),
                  subtitle: Text("Male"),
                ),
                isActive: true),
            Step(
                title: Text("Current Location"),
                content: ListTile(
                  title: Text("Location"),
                  subtitle: Text("A-97 Shantinagar, Katargam , Surat"),
                ),
                isActive: true),
            Step(
                title: Text("Nationality"),
                content: ListTile(
                  title: Text("Nationality"),
                  subtitle: Text("Indian"),
                ),
                isActive: true),
            Step(
                title: Text("Language"),
                content: ListTile(
                  title: Text("Language Known"),
                  subtitle: Text("English , Gujarati"),
                ),
                isActive: true),
            Step(
                title: Text("Biographies"),
                content: ListTile(
                  title: Text("Biography"),
                  subtitle: Text("Success"),
                ),
                isActive: true),
          ],
          currentStep: stepperProviderT!.i,
          onStepContinue: () {
            setState(() {
              if (stepperProviderT!.i < 9) {
                stepperProviderT!.i++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (stepperProviderT!.i > 0) {
                stepperProviderT!.i--;
              }
            });
          },
        ),
      ),
    );
  }
}
