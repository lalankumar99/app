import 'package:flutter/material.dart';

/// ============================================================================
/// MASTER CONTROL FILE (APP CONFIG)
/// किसी भी नए क्लाइंट को ऐप देने से पहले सिर्फ़ इसी फ़ाइल में बदलाव करें!
/// - यहाँ से आप कोचिंग का नाम, थीम कलर और कॉन्टैक्ट बदल सकते हैं।
/// - जिस सेक्शन की ज़रूरत नहीं है, उसके आगे `true` की जगह `false` लिख दें—वह सेक्शन
///   पूरे ऐप और बॉटम बार से अपने-आप हट जाएगा!
/// ============================================================================
class AppConfig {
  // 1. कोचिंग ब्रांडिंग (Client Branding)
  static const String appName = "Lakshya Coaching Classes";
  static const String tagline = "Bihar Board, SSC, Railway & Foundation Batches";
  static const String directorName = "Er. Rahul Kumar";
  static const String supportPhone = "+91 9876543210";
  static const String supportWhatsApp = "+91 9876543210";
  static const String instituteAddress = "Boring Road, Patna, Bihar";

  // 2. ऐप का कलर थीम (Theme Colors)
  static const Color primaryColor = Color(0xFF1E40AF); // Deep Royal Blue
  static const Color accentColor = Color(0xFFF59E0B);  // Warm Amber/Gold
  static const Color backgroundColor = Color(0xFFF8FAFC);

  // 3. सेक्शन कंट्रोल स्विच (Feature Toggles: true = चालू, false = बंद/रिमूव)
  static const bool enableLoginScreen    = true; // लॉग इन स्क्रीन (false करने पर सीधा होम खुलेगा)
  static const bool enableHeroBanner     = true; // होम स्क्रीन का टॉप ऑफ़र बैनर
  static const bool enableLiveClassAlert = true; // लाइव क्लास का अलर्ट और ज्वाइन बटन
  static const bool enableNoticeBoard    = true; // कोचिंग का नोटिस बोर्ड / अनाउंसमेंट
  static const bool enableBatchesSection = true; // कोर्सेज और बैच (Batches) का सेक्शन
  static const bool enableVideoLectures  = true; // रिकॉर्डेड वीडियो क्लासेज का सेक्शन
  static const bool enablePdfNotes       = true; // PDF नोट्स और स्टडी मटेरियल
  static const bool enableTestSeries     = true; // ऑनलाइन टेस्ट सीरीज़ और क्विज़
  static const bool enableDoubtSupport   = true; // डाउट पूछने (WhatsApp/Call) का सेक्शन
  static const bool enableProfileSection = true; // स्टूडेंट प्रोफ़ाइल टैब

  // 4. डेटा मोड (Data Source Switch)
  // अभी टेंप्लेट दिखाने के लिए false रखें (Mock Data चलेगा)।
  // जब ओरिजिनल ऐप में Firebase जोड़ें, तो इसे true कर दें।
  static const bool useFirebaseBackend   = false;
}
