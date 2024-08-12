import 'package:admin_uber_web_panel/methods/common_methods.dart';
import 'package:admin_uber_web_panel/widgets/drivers_data_list.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatefulWidget
{
  static const String id = "webPageDrivers";

  const DriversPage({super.key});

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage>
{
  CommonMethods cMethods = CommonMethods();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              Row(
                children: [
                  cMethods.header(2, "ID OF THE DRIVER"),
                  //cMethods.header(1, "FACE"),
                  cMethods.header(1, "NAME"),
                  cMethods.header(1, "CAR"),
                  cMethods.header(1, "PHONE"),
                  cMethods.header(1, "EARNINGS (VND)"),
                  cMethods.header(1, "ACTION"),
                ],
              ),

              //display data
              DriversDataList(),
            ],
          ),
        ),
      ),
    );
  }
}
