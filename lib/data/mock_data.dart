/// ============================================================================
/// MOCK DATA (डेमो डेटा)
/// अभी बिना Firebase के क्लाइंट को डेमो दिखाने के लिए यह डेटा दिखेगा।
/// ============================================================================
class MockData {
  static const List<Map<String, String>> announcements = [
    {
      "title": "नया Foundation Batch सोमवार से शुरू!",
      "date": "20 Oct 2026",
      "desc": "Class 11th, 12th और Competitive Exams के लिए नया बैच सुबह 8 बजे से शुरू हो रहा है।",
    },
    {
      "title": "Sunday Mega Scholarship Test",
      "date": "25 Oct 2026",
      "desc": "टॉप 10 छात्रों को 50% तक फ़ीस में छूट। ऐप से अपना रजिस्ट्रेशन करें।",
    },
  ];

  static const List<Map<String, dynamic>> liveClasses = [
    {
      "subject": "Mathematics - Trigonometry Trick Session",
      "teacher": "Rahul Sir",
      "time": "Live Now • 07:00 PM",
      "batch": "Target SSC & Railway Batch",
      "isLive": true,
    },
    {
      "subject": "Physics - Optics & Numericals",
      "teacher": "Ankit Sir",
      "time": "Tomorrow • 09:00 AM",
      "batch": "Class 12th Board Special",
      "isLive": false,
    },
  ];

  static const List<Map<String, dynamic>> batches = [
    {
      "id": "batch_1",
      "title": "Bihar Board Class 12th (Science) Full Course",
      "subtitle": "Physics, Chemistry, Maths, Biology + Hindi/English",
      "price": "₹1,499",
      "originalPrice": "₹3,999",
      "validity": "1 Year Validity",
      "tag": "BESTSELLER",
      "features": ["Daily Live Class", "Chapter-wise PDF Notes", "25+ Model Tests"],
    },
    {
      "id": "batch_2",
      "title": "SSC / Railway / BSSC Foundation Batch",
      "subtitle": "Maths, Reasoning, GK/GS Complete Preparation",
      "price": "₹999",
      "originalPrice": "₹2,499",
      "validity": "Until Exam",
      "tag": "NEW BATCH",
      "features": ["Zero to Hero Level", "Bilingual Notes (Hindi/Eng)", "Weekly Mock Test"],
    },
    {
      "id": "batch_3",
      "title": "Class 10th Matric Topper Batch",
      "subtitle": "All Subjects Complete Syllabus + Objective Question Bank",
      "price": "₹799",
      "originalPrice": "₹1,999",
      "validity": "1 Year Validity",
      "tag": "POPULAR",
      "features": ["Recorded + Live", "VVI Objective PDF", "Doubt Clearing Group"],
    },
  ];

  static const List<Map<String, String>> videoLectures = [
    {
      "title": "Lecture 01: Percentage (प्रतिशत) Basic Concepts",
      "subject": "Mathematics",
      "duration": "48 mins",
      "teacher": "Rahul Sir",
    },
    {
      "title": "Lecture 02: Laws of Motion & Friction",
      "subject": "Physics",
      "duration": "55 mins",
      "teacher": "Ankit Sir",
    },
    {
      "title": "Lecture 03: Modern History - 1857 Revolt",
      "subject": "GK / GS",
      "duration": "42 mins",
      "teacher": "Vikash Sir",
    },
    {
      "title": "Lecture 04: Chemical Bonding Complete Revision",
      "subject": "Chemistry",
      "duration": "51 mins",
      "teacher": "Suman Sir",
    },
  ];

  static const List<Map<String, String>> pdfNotes = [
    {
      "title": "Trigonometry Formula Sheet & 100 VVI Questions.pdf",
      "subject": "Mathematics",
      "pages": "24 Pages • 2.4 MB",
    },
    {
      "title": "Class 12th Physics Complete Chapter-1 Hand Notes.pdf",
      "subject": "Physics",
      "pages": "38 Pages • 4.1 MB",
    },
    {
      "title": "Bihar Special GK One-Liner Notes (Hindi).pdf",
      "subject": "General Knowledge",
      "pages": "45 Pages • 3.8 MB",
    },
  ];

  static const List<Map<String, dynamic>> testSeries = [
    {
      "title": "Full Length Mock Test - 01 (All Subjects)",
      "questions": 100,
      "durationMins": 90,
      "marks": 100,
      "isFree": true,
    },
    {
      "title": "Mathematics Speed Booster Quiz - Chapter 1 to 5",
      "questions": 30,
      "durationMins": 25,
      "marks": 60,
      "isFree": true,
    },
    {
      "title": "Science VVI Objective Test (Board Pattern)",
      "questions": 50,
      "durationMins": 45,
      "marks": 50,
      "isFree": false,
    },
  ];
}
