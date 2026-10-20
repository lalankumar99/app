import 'package:flutter/material.dart';
import 'config/app_config.dart';
import 'screens/login_screen.dart';
import 'screens/main_shell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: जब ओरिजिनल ऐप में Firebase जोड़ें, तो नीचे की लाइन चालू करें:
  // await Firebase.initializeApp();
  runApp(const CoachingTemplateApp());
}

class CoachingTemplateApp extends StatelessWidget {
  const CoachingTemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppConfig.primaryColor,
          primary: AppConfig.primaryColor,
          secondary: AppConfig.accentColor,
        ),
        scaffoldBackgroundColor: AppConfig.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppConfig.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),
      ),
      // अगर AppConfig में enableLoginScreen true है तो लॉग इन खुलेगा, वरना सीधा होम स्क्रीन
      home: AppConfig.enableLoginScreen
          ? const LoginScreen()
          : const MainShell(),
    );
  }
}
