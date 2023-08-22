import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(const BottomNavigationInitial(currentIndex: 0)) {
    on<BottomNavigationEvent>((event, emit) {
      if (event is TabSelectedEvent) {
        emit(BottomNavigationInitial(currentIndex: event.selectedIndex));
      }
    });
  }
}
