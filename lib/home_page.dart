import 'dart:io';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:my_shayri/styles/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> shayariList = [
    "ताउम्र जलते रहे हैं धीमी धीमी आँच पर,\nतभी ये इश्क़ और चाय मशहूर हुए हैं।",
    "सुनो तुम चाय अच्छी बनाती हो\nपर मुंह बनाने में भी तुम्हारा कोई जवाब नहीं..!!",
    "करके मशहूर मुझे जमाने में कही खो जाएगी वो\nमैं रहूंगा उसका, किसी और को हो जायेगी वो :-/",
    "किसी को ताकू या ना ताकु एक शख्स को तकना है...\nआ गया है वो सामने हकीकत है या सपना है...\nलोग कब कैसे ईद मनाते हैं ये लोग ही जाने....\nहम तो चाहें जब ईद मना ले क्योंकि चांद हमारा अपना है..!!💫❤️🥰",
    "क्या खूब कहा है किसी ने...\nजिसे पा नहीं सकते... \nउसे देख कर खुश होना....\nये भी मोहब्बत है...!!",
    "जानते हो फिर भी अंजान बनते हो\nइस तरह हमें परेशान करते हो\nपूछते हो तुम्हे क्या है पसंद\nजब आप खुद हो तो क्यूं सवाल करते हो🤗💫",
    "तेरी जुदाई से डरता हूं मुझे डरने दे \nतुझ से बिछड़ कर मरता हूं मुझे मरने दे\nतू मुझे प्यार करे या न करे तेरी मर्ज़ी\nमैं तुझसे प्यार करता हु मुझे करने दे...❤️",
    "...सुकून मिलता है तुम्हें खुश देख कर...\nक्या फर्क पड़ता है की तुम हमारे हो या किसी और के...!🥀",
    "मुझे नींद नहीं आयेगी तो मंझे सुला पाओगे क्या?\nमैं नासमझ हूं बहुत मुझे हर बात समझा पाओगे क्या? \nहां माना थोड़ा ज्यादा गुस्सा आता हैं\nपर मेरे गुस्से में प्यार ढूंढ़ पाओगे क्या?",
    "उसने मांगा साथ मैं जिंदगी दे आया...\nउसने मांगा चांद मैं माथे की बिंदी दे आया...\nउसने मांगा तौफा यादों का मैं झुमके दे आया...❣️",
    "लोग मरते है खूबसूरती पर\nहम तो एक 45 किलो\nकी दुबली पतली लड़की पर दिल\nहार बैठे...!❤️🥰",
    "कुछ लोग आपकी जिंदगी में जीत या हार बनने के लिए नहीं आते...\nबस आपको थोड़ा आगे तक चलाने के लिए आते है... आपके अंदर प्यार जिंदा रखने के लिए आते है..!!❤️",
    "Dost भी तुम Pyaar भी तुम\nएक भी तुम हजार भी तुम,\nGussa भी तुम Maafi भी तुम\nमेरी इस Zindagi के Safar में काफी भी तुम..!!❤️"
  ];

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
            ? "913798870222599_913799606889192"  // Use test placement ID
            : "913798870222599_913799606889192",  // Same for iOS during testing
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
        elevation: 3,

        title: const Text(
          'My Shayaries',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: shayariList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(8),
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
                      shayariList[index],
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
