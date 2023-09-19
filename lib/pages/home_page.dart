import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: ChangeNotifierProvider<HomePageProvider>(
              create: (context) => HomePageProvider(),
              child: Consumer<HomePageProvider>(
                builder: (context, provider, child){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(provider.EligibilityMessage.toString(), style: TextStyle(color: (provider.isEligible == true) ? Colors.green : Colors.red),),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter your age..",
                        ),
                        onChanged: (value){
                          provider.CheckEligible(int.parse(value));
                        },
                      )
                    ],
                  );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }
}
