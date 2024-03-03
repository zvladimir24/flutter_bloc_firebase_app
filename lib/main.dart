import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_like_app/app.dart';
import 'package:insta_like_app/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAiGPVGGzNXrp3fVOgPJmHdOmZaiprTIno",
            appId: "1:930980436434:web:69b06d2c4a2195a4ec100b",
            messagingSenderId: "930980436434",
            projectId: "instalikeapp-3d3d3"));
  }
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
