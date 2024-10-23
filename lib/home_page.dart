import 'dart:io';

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> shayariList = [
    "Shayari 1: This is the first shayari.",
    "Shayari 2: Another beautiful shayari.",
    "Shayari 3: Shayari that touches the heart.",
    "Shayari 4: Inspirational and deep.",
    "Shayari 5: Shayari for your loved ones.",
    "Shayari 6: Shayari about life.",
    "Shayari 7: Emotional shayari.",
    "Shayari 8: Romantic shayari.",
    "Shayari 9: Shayari for the soul.",
    "Shayari 10: Shayari about happiness.",
    "Shayari 11: Shayari that makes you think.",
    "Shayari 12: A calming shayari.",
    "Shayari 13: Shayari to end the list beautifully."
  ];

  @override
  void initState() {
    super.initState();
    FacebookAudienceNetwork.init(
        testingId: "TESTING_ID", iOSAdvertiserTrackingEnabled: true);
  }

  Widget _buildFacebookBanner() {
    return FacebookBannerAd(
      placementId: Platform.isAndroid
          ? "YOUR_ANDROID_PLACEMENT_ID"
          : "YOUR_IOS_PLACEMENT_ID",
      bannerSize: BannerSize.STANDARD,

      listener: (result, value) {
        /*if (result == InterstitialAdResult.LOADED)
      FacebookInterstitialAd.showInterstitialAd(delay: 5000);
  },*/
        switch (result) {
          case BannerAdResult.ERROR:
            print("Error: $result -->  $value");
            break;
          case BannerAdResult.LOADED:
            print("Loaded: $result -->  $value");
            break;
          case BannerAdResult.CLICKED:
            print("Clicked: $result -->  $value");
            break;
          case BannerAdResult.LOGGING_IMPRESSION:
            print("Logging Impression: $result -->  $value");
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shayari List'),
      ),
      body: ListView.builder(
        itemCount: shayariList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                margin: const EdgeInsets.all(10),
                elevation: 5,
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(shayariList[index],
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                              fontFamily: 'Fibonacci',
                            ))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: _buildFacebookBanner(),
              ),
            ],
          );
        },
      ),
    );
  }
}
