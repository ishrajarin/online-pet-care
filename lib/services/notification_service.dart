import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  static late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  // Initialize notifications
  static Future<void> initialize() async {
    // Initialize local notifications
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // Request permissions for iOS devices
    await _firebaseMessaging.requestPermission();

    // Configure FCM on message received
    FirebaseMessaging.onMessage.listen(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  // Handle incoming messages
  static Future<void> _handleMessage(RemoteMessage message) async {
    print('Received message: ${message.notification?.title}');

    // Show a local notification
    _showNotification(message.notification?.title, message.notification?.body);
  }

  // Show a local notification
  static Future<void> _showNotification(String? title, String? body) async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails platformDetails = NotificationDetails(
      android: androidDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformDetails,
    );
  }

  // Get the device token for FCM
  static Future<String?> getDeviceToken() async {
    String? token = await _firebaseMessaging.getToken();
    return token;
  }

  // Subscribe to a topic
  static Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  // Unsubscribe from a topic
  static Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  // Send a push notification using Firebase
  static Future<void> sendPushNotification(String token, String title, String body) async {
    // You would need to implement the code to send push notifications through Firebase's API.
    // This is generally done using Firebase Cloud Functions or a backend server to send notifications.
  }
}
