import '../config/app_config.dart';
import '../data/mock_data.dart';

/// ============================================================================
/// DATA SERVICE (FIREBASE READY LAYER)
/// अभी यह MockData से डेटा देता है। जब आप ओरिजिनल ऐप में Firebase जोड़ेंगे,
/// तो बस यहाँ `useFirebaseBackend == true` वाले हिस्से में Firestore कॉल लिख दें।
/// आपको किसी भी स्क्रीन का UI कोड बदलने की ज़रूरत नहीं पड़ेगी!
/// ============================================================================
class DataService {
  static Future<List<Map<String, dynamic>>> getBatches() async {
    if (AppConfig.useFirebaseBackend) {
      // TODO: जब Firebase जोड़ें, तब यहाँ Firestore कोड अनकमेंट करें:
      // final snap = await FirebaseFirestore.instance.collection('batches').get();
      // return snap.docs.map((d) => d.data()).toList();
    }
    return MockData.batches;
  }

  static Future<List<Map<String, String>>> getVideoLectures() async {
    if (AppConfig.useFirebaseBackend) {
      // Firestore 'videos' collection fetch
    }
    return MockData.videoLectures;
  }

  static Future<List<Map<String, String>>> getPdfNotes() async {
    if (AppConfig.useFirebaseBackend) {
      // Firestore 'pdf_notes' collection fetch
    }
    return MockData.pdfNotes;
  }

  static Future<List<Map<String, dynamic>>> getTestSeries() async {
    if (AppConfig.useFirebaseBackend) {
      // Firestore 'tests' collection fetch
    }
    return MockData.testSeries;
  }
}
