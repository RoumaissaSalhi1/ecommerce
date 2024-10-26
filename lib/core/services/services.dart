import 'package:ecommece/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    //shared preferences
    sharedPreferences = await SharedPreferences.getInstance();

    //initialize firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return this;
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Initialize the Firebase app if necessary, and handle the message
  print("Handling a background message: ${message.messageId}");
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}
