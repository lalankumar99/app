import 'package:flutter/material.dart';
import '../config/app_config.dart';
import '../data/mock_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConfig.appName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              AppConfig.tagline,
              style: const TextStyle(fontSize: 11, color: Colors.white70),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("कोई नया नोटिफिकेशन नहीं है")),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // 1. HERO BANNER SECTION (अगर AppConfig में चालू है)
          if (AppConfig.enableHeroBanner) ...[
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppConfig.primaryColor,
                    AppConfig.primaryColor.withOpacity(0.8),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppConfig.accentColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "ADMISSION OPEN",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "नए टारगेट और फाउंडेशन बैच में नामांकन शुरू!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Guided by ${AppConfig.directorName} • Live + Recorded Classes, PDF Notes & Test Series",
                    style: const TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],

          // 2. QUICK FEATURES GRID
          const Text(
            "Quick Access (सुविधाएं)",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              if (AppConfig.enableLiveClassAlert)
                _buildQuickAction(Icons.sensors_rounded, "Live Class", Colors.red),
              if (AppConfig.enableBatchesSection)
                _buildQuickAction(Icons.school_rounded, "All Batches", Colors.blue),
              if (AppConfig.enableVideoLectures)
                _buildQuickAction(Icons.ondemand_video_rounded, "Videos", Colors.purple),
              if (AppConfig.enablePdfNotes)
                _buildQuickAction(Icons.picture_as_pdf_rounded, "PDF Notes", Colors.orange),
              if (AppConfig.enableTestSeries)
                _buildQuickAction(Icons.assignment_turned_in_rounded, "Mock Tests", Colors.green),
              if (AppConfig.enableDoubtSupport)
                _buildQuickAction(Icons.support_agent_rounded, "Ask Doubt", Colors.teal),
            ],
          ),
          const SizedBox(height: 24),

          // 3. LIVE CLASSES ALERT (अगर चालू है)
          if (AppConfig.enableLiveClassAlert) ...[
            const Text(
              "Live & Upcoming Classes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...MockData.liveClasses.map((lc) => Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: lc['isLive'] == true
                          ? Colors.red.withOpacity(0.12)
                          : Colors.blue.withOpacity(0.12),
                      child: Icon(
                        Icons.videocam_rounded,
                        color: lc['isLive'] == true ? Colors.red : Colors.blue,
                      ),
                    ),
                    title: Text(
                      lc['subject'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("${lc['teacher']} • ${lc['time']}"),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            lc['isLive'] == true ? Colors.red : AppConfig.primaryColor,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(lc['isLive'] == true ? "JOIN LIVE" : "Remind"),
                    ),
                  ),
                )),
            const SizedBox(height: 16),
          ],

          // 4. NOTICE BOARD SECTION (अगर चालू है)
          if (AppConfig.enableNoticeBoard) ...[
            const Text(
              "Notice Board (सूचना पट्ट)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...MockData.announcements.map((item) => Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.campaign_rounded,
                      color: AppConfig.accentColor,
                      size: 32,
                    ),
                    title: Text(
                      item['title']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("${item['desc']}
📅 ${item['date']}"),
                    isThreeLine: true,
                  ),
                )),
            const SizedBox(height: 16),
          ],

          // 5. DOUBT SUPPORT CARD (अगर चालू है)
          if (AppConfig.enableDoubtSupport)
            Card(
              color: Colors.green.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const Icon(Icons.chat_rounded, color: Colors.green, size: 32),
                title: const Text(
                  "किसी सवाल में डाउट है? (Doubt Support)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "हमारे टीचर्स से सीधा संपर्क करें: ${AppConfig.supportWhatsApp}",
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label, Color color) {
    return Container(
      width: 102,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color.withOpacity(0.12),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
