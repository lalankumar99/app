import 'package:flutter/material.dart';
import '../config/app_config.dart';
import '../data/mock_data.dart';

class StudyMaterialScreen extends StatelessWidget {
  const StudyMaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = [
      if (AppConfig.enableVideoLectures) const Tab(text: "Video Lectures"),
      if (AppConfig.enablePdfNotes) const Tab(text: "PDF Notes"),
    ];

    final List<Widget> views = [
      if (AppConfig.enableVideoLectures) _buildVideoList(),
      if (AppConfig.enablePdfNotes) _buildPdfList(),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Study Material (क्लास और नोट्स)"),
          bottom: tabs.length > 1
              ? TabBar(
                  indicatorColor: AppConfig.accentColor,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white70,
                  tabs: tabs,
                )
              : null,
        ),
        body: TabBarView(children: views),
      ),
    );
  }

  Widget _buildVideoList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: MockData.videoLectures.length,
      itemBuilder: (context, index) {
        final v = MockData.videoLectures[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFFE0E7FF),
              child: Icon(Icons.play_arrow_rounded, color: AppConfig.primaryColor),
            ),
            title: Text(
              v['title']!,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("${v['subject']} • ${v['teacher']} • ${v['duration']}"),
          ),
        );
      },
    );
  }

  Widget _buildPdfList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: MockData.pdfNotes.length,
      itemBuilder: (context, index) {
        final pdf = MockData.pdfNotes[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red.shade50,
              child: const Icon(Icons.picture_as_pdf_rounded, color: Colors.red),
            ),
            title: Text(
              pdf['title']!,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text("${pdf['subject']} • ${pdf['pages']}"),
            trailing: const Icon(Icons.download_rounded),
          ),
        );
      },
    );
  }
}
