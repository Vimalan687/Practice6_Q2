import 'package:bloc/bloc.dart';

class Capitalize extends Cubit<String>{
Capitalize() : super('');
void capatalise(word) {
    emit(word.toUpperCase());
    print(state);
  }}