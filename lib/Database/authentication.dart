import 'package:sparapp/Database/user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationService {
  final Supabase supabase = Supabase.instance;

  Future<CurrentUser?> singIn(String email, String password) async {
    try {
      AuthResponse userGet = await supabase.client.auth.signInWithPassword(
        password: password,
        email: email,
      );
      User user = userGet.user!;
      return CurrentUser.fromSupabase(user);
    } catch (e) {
      return null;
    }
  }

  Future<CurrentUser?> singUp(String email, String password) async {
    try {
      AuthResponse userGet = await supabase.client.auth.signUp(
        password: password,
        email: email,
      );
      User user = userGet.user!;
      return CurrentUser.fromSupabase(user);
    } catch (e) {
      return null;
    }
  }

  Future logOut() async {
    try {
      await supabase.client.auth.signOut();
    } catch (e) {
      return;
    }
  }

  Future<CurrentUser?> getCode(String email) async {
    try {
      await supabase.client.auth.resetPasswordForEmail(email);
    } catch (e) {
      return null;
    }
  }
}
