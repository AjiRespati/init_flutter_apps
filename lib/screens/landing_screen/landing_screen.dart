import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../global_view_models/system_view_model.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SystemViewModel>().setSessionIdHardCode("sessionKu");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Voltras Agent Network ${context.watch<SystemViewModel>().sessionId}"),
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/van0001.png"),
                fit: BoxFit.cover,
              ),
            ),
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "The Biggest Wholesale Travel Agent",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Voltras Agent Network",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  children: List.generate(
                    5,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Card(
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.airplanemode_off,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Card(child: Container(height: 250, color: Colors.greenAccent)),
          const SizedBox(height: 5),
          Card(
            child: Container(
              height: 200,
              color: Colors.amber,
            ),
          ),
          const SizedBox(height: 5),
          Card(child: Container(height: 250, color: Colors.greenAccent)),
          const SizedBox(height: 5),
          Card(
            child: Container(
              height: 200,
              color: Colors.amber,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
