import 'package:bloc/bloc.dart';
import 'package:e_commerce_shoes/domain/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {


  final  FirebaseAuth auth = FirebaseAuth.instance;
  
  AuthBloc() : super(AuthInitial()) {
    on<CheckLoginStatusEvent>((event, emit)async {
      User? user;
       try {
         
         await Future.delayed(Duration(seconds: 2),(){
          user = auth.currentUser;
         });

         if (user!=null) {
           emit(Authenticated(user));
         }else{
          emit(UnAuthenticated());
         }
       } catch (e) {
         
         emit(AuthenticatedError(message: e.toString()));
       }
    });
  }
}
