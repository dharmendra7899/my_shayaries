import 'package:flutter/material.dart';
import 'package:my_shayri/home_page.dart';
import 'package:my_shayri/styles/app_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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

  final List<String> funnyShayariList = [
    "Dil se dosti ki thi,\nPar Dil to bewafa nikla,\nShaadi ki tayyari kar rahe hain,n\Wo Dil par kisi aur ka haq nikla! 😆",
    "Teri Aankhon mein itna pyaar hai,\nLagta hai tu Mainu udhaar hai,\nKab tak chhupa ke rakhegi yeh pyar?n\Recharge karwa de, bas itna ehsaan kar yaar! 😂",
    "Mohabbat toh Bas ek dhokha hai,\nShaadi toh Pure kaam ka soda hai,\nIs Dhoke se jitna door raho,n\Utni Zindagi badiya hai! 😜",
    '''Aajkal pyar ka zamana badal gaya,\nWhatsApp pe pyar ka izhaar ho gaya,\nGhanti bajti hai "Hey baby! what's up?"\nKya zamana yeh kharab ho gaya! 😅''',
    "Dosti ka rishta pyaara hota hai,\nBiwi ka apna nara hota hai,\nKhana lao, yeh lao, wo lao!n\Yahi biwiyon ka pyaar hota hai! 😂",
    "Zindagi mein har insaan ka ek sapna hota hai,\nShaadi ke baad Sapna kabhi saaf karna hota hai! 😜",
    "Tere pyar mein hum kho gaye,\nApne chehre se bhi hum so gaye,\nTumne bola tumse achha kaun hai,\nHumne bola hamare ghar ke kutton se pooch lo! 😂",
    "Dil se chaahta tha tujhe apna banana,\nPar tu ghar se nikli thi pakaana! 😂",
    "Tumhari yaadon mein hum jeete hain,\nData pack ke bina WhatsApp kaise chalayenge? 😆",
    '''Shadi ka proposal bhejne ka aasan tareeqa:\n"Tumhein 'Jio' karna hai ya mujhe Idea dena hai?" 😜''',
    "Zindagi ka maza tab aata hai,\nJab biwi se pehle chocolate ka packet khatam ho jata hai! 😅",
  ];

  final List<String> sadShayariList = [
    "कभी कभी हंसते हुए भी\nदिल रो रहा होता है,\nहर खुशी में भी गम\nछुपा होता है।",
    "तेरे बाद ये हाल है मेरा,\nमैं खुश तो हूं, पर\nतेरी कमी भी हर बार महसूस करता हूं।",
    "हमने तो सोचा था कि\nतू ही है हमारी दुनिया\nपर तू ने हमेंn\पराया कर दिया।",
    "दिल तोड़ा किसी ने इस कदर\nकि अब किसी पर\nऐतबार नहीं होता।",
    "तू मेरे साथ नहीं,\nफिर भी तुझे चाहना\nमेरी आदत बन चुकी है।",
    "अब नफ़रत हो गई है\nखुद से,\nक्यों तुझसे बेपनाह\nप्यार किया मैंने?",
    "हमसे प्यार करके\nतू ने क्या पाया?\nतू तो चली गई,\nपर हमसे सब\n खो गया।",
    "तू पास होती तो\nदिल भी खुश होता,\nअब तो ये दर्द ही\nसाथ है।",
    "मेरी तक़दीर में\nसिर्फ तन्हाई थी,\nप्यार का नाम\nसिर्फ धोखा था।",
    "दिल में जो गम है\nवो बता नहीं सकता,\nतू अब दूर है\nफिर भी भुला नहीं सकता।",
  ];
  final List<String> motivationalShayariList = [
    "ठोकरें खा कर भी न संभले,\nतो मुसाफिर का नसीब क्या?\nजो गिर कर फिर उठ सके,\nवो ही असल में जीतता है। 💪",
    "मंजिल उन्हीं को मिलती है,\nजिनके हौसलों में जान होती है,\nपंखों से कुछ नहीं होता,\nहौसलों से उड़ान होती है। ✨",
    "खुद को कम मत समझो,\nहर दिन नया मौका है,\nहौसला बनाए रखो,\nजीत जरूर तुम्हारा होगा। 🌟",
    "रुकने का मतलब हार नहीं,\nमंजिल के पास भी आराम नहीं,\nजो करते हैं मेहनत रात-दिन,n\सफलता उन्हीं के पास है। 🌈",
    "अभी तो मुकाम हासिल करना बाकी है,\nअभी तो इरादों का इम्तिहान बाकी है,\nअभी तो सिर्फ सफर शुरू किया है,\n मंजिल आना अभी बाकी है। 🌄।",
    "ठोकरें खा कर भी जो मुस्कुराए,\nवही इंसान अपने मंजिल को पाए।\nमुश्किलों से हार मत मानो,\nक्योंकि सितारे रात में ही चमकते हैं। 🌙?",
    "जो सपना देखा है उसे पूरा भी कर,\nक्योंकि मेहनत करने वालों की कभी हार नहीं होती।\nहर मुश्किल को हरा दे तू,\nतेरी तकदीर तुझे कभी मना नहीं करती। 🔥",
    "चाहे हो कितनी भी अंधेरी रात,\nसवेरा जरूर होगा एक दिन।\nहिम्मत मत हारना दोस्त,\nतेरी मेहनत का भी फल जरूर मिलेगा। 🌅",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.lightColor,
      appBar: AppBar(
        backgroundColor: appColors.gradient3,
        elevation: 3,
        title: const Text(
          'My Shayaries',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            shayariList: shayariList, title: 'Emotional'),
                      )),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/emotional.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Emotional',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: appColors.appBlack,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            shayariList: motivationalShayariList,
                            title: 'Motivational'),
                      )),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/motivational.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Motivational',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: appColors.appBlack,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomePage(shayariList: sadShayariList, title: 'Sad'),
                      )),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/sad.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Sad',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: appColors.appBlack,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                            shayariList: funnyShayariList, title: 'Funny'),
                      )),
                  child: Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/funny.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Funny',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: appColors.appBlack,
                              // fontFamily: 'Fibonacci',
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
