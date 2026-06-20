import 'package:supabase_flutter/supabase_flutter.dart';

class CurrentUser{
  String? id;
  
  CurrentUser.fromSupabase(User user){
    id = user.id;
  }
}