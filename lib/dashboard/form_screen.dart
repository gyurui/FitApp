import 'package:fitstory/colors.dart';
import 'package:fitstory/personal_statistics/personal_statistics_screen.dart';
import 'package:fitstory/widgets/custom_radio_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FormScreenWidget();
  }
}

class FormScreenWidget extends StatefulWidget {
  @override
  _FormScreenWidgetState createState() => _FormScreenWidgetState();
}

class _FormScreenWidgetState extends State<FormScreenWidget> {
  List<RadioButtonItem> genders = <RadioButtonItem>[];
  List<RadioButtonItem> heights = <RadioButtonItem>[];
  List<RadioButtonItem> ages = <RadioButtonItem>[];
  List<RadioButtonItem> fatness = <RadioButtonItem>[];
  List<RadioButtonItem> lifestyle = <RadioButtonItem>[];

  @override
  void initState() {
    super.initState();
    genders.add(RadioButtonItem("Male", MdiIcons.genderMale, false));
    genders.add(RadioButtonItem("Female", MdiIcons.genderFemale, false));
    genders.add(RadioButtonItem("Other", MdiIcons.genderTransgender, false));

    heights.add(RadioButtonItem("140-160cm", MdiIcons.humanChild, false));
    heights.add(RadioButtonItem("160-180cm", MdiIcons.humanMale, false));
    heights.add(RadioButtonItem(
        "181-200cm", MdiIcons.humanMaleHeightVariant, false));

    ages.add(RadioButtonItem("14-20", MdiIcons.teddyBear, false));
    ages.add(RadioButtonItem("21-35", MdiIcons.walk
        , false));
    ages.add(RadioButtonItem("35-60", IconData(0xe222, fontFamily: 'MaterialIcons'), false));

    fatness.add(RadioButtonItem("Thin", MdiIcons.accountArrowDown, false));
    fatness.add(RadioButtonItem("Average", MdiIcons.accountCheck, false));
    fatness.add(RadioButtonItem("Thicc", MdiIcons.accountArrowUp, false));

    lifestyle.add(RadioButtonItem("Vegan", MdiIcons.carrot, false));
    lifestyle.add(RadioButtonItem("Normal", MdiIcons.food, false));
    lifestyle.add(RadioButtonItem("Meatlover", MdiIcons.foodDrumstick, false));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Text("Saját adatok "),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
              border: Border.all(
                color: FitColors.fitBackground,
                width: 2
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: genders.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FitColors.fitBackground,
                    onTap: () {
                      setState(() {
                        for (var element in genders) {
                          element.isSelected = false;
                        }
                        genders[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(genders[index]),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
                border: Border.all(
                    color: FitColors.fitBackground,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: heights.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FitColors.fitBackground,
                    onTap: () {
                      setState(() {
                        for (var element in heights) {
                          element.isSelected = false;
                        }
                        heights[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(heights[index]),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
                border: Border.all(
                    color: FitColors.fitBackground,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: ages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FitColors.fitBackground,
                    onTap: () {
                      setState(() {
                        for (var element in ages) {
                          element.isSelected = false;
                        }
                        ages[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(ages[index]),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
                border: Border.all(
                    color: FitColors.fitBackground,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: fatness.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FitColors.fitBackground,
                    onTap: () {
                      setState(() {
                        for (var element in fatness) {
                          element.isSelected = false;
                        }
                        fatness[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(fatness[index]),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
                border: Border.all(
                    color: FitColors.fitBackground,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: lifestyle.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: FitColors.fitBackground,
                    onTap: () {
                      setState(() {
                        for (var element in lifestyle) {
                          element.isSelected = false;
                        }
                        lifestyle[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(lifestyle[index]),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
                border: Border.all(
                    color: FitColors.fitBackground,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(12)
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersonalStatisticsScreen()));
                },
                icon: Icon(MdiIcons.arrowRight), color: FitColors.fitCoral),
          )
        ],
      ),
    );
  }
}
