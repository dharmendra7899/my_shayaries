import 'dart:io';

import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:my_shayri/styles/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.shayariList, required this.title});
  final List<String> shayariList;
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    FacebookAudienceNetwork.init(
        testingId: "913798870222599_913799606889192",
        iOSAdvertiserTrackingEnabled: true);
  }

  Widget _buildFacebookBanner() {
    return FacebookBannerAd(
        placementId: Platform.isAndroid
            ? "913798870222599_913799606889192" // Use test placement ID
            : "913798870222599_913799606889192", // Same for iOS during testing
        bannerSize: BannerSize.STANDARD,
        listener: (result, value) {
          switch (result) {
            case BannerAdResult.ERROR:
              print("Error: $value");
              break;
            case BannerAdResult.LOADED:
              print("Loaded: $value");
              break;
            case BannerAdResult.CLICKED:
              print("Clicked: $value");
              break;
            case BannerAdResult.LOGGING_IMPRESSION:
              print("Logging Impression: $value");
              break;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.appWhite,
      appBar: AppBar(
        backgroundColor: appColors.gradient3,
        elevation: 3,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.shayariList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        appColors.gradient1,
                        appColors.gradient2,
                        appColors.gradient3,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      widget.shayariList[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                            color: appColors.appBlack,
                            fontFamily: 'Fibonacci',
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _buildFacebookBanner(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
