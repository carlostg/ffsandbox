import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutterSandboxFirebaseUser {
  FlutterSandboxFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FlutterSandboxFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutterSandboxFirebaseUser> flutterSandboxFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlutterSandboxFirebaseUser>(
            (user) => currentUser = FlutterSandboxFirebaseUser(user));
