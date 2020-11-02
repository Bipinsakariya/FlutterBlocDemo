import 'package:rxdart/rxdart.dart';
import 'package:rxdart_bloc_dio_demoexample/model/UserResponse.dart';
import 'package:rxdart_bloc_dio_demoexample/service/UserRepository.dart';

class UserBloc {
  final UserRepository _repository = UserRepository();
  final BehaviorSubject<UserResponse> _subject =
  BehaviorSubject<UserResponse>();

  getUser() async {
    UserResponse response = await _repository.getUser();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<UserResponse> get subject => _subject;
}

final bloc = UserBloc();
