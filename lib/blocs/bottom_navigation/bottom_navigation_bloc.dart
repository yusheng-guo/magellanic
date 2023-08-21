import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc()
      : super(const BottomNavigationInitial(currentIndex: 0)) {
    on<BottomNavigationEvent>((event, emit) {
      if (event is TabSelectedEvent) {
        // ignore: avoid_print
        print(event);
        emit(BottomNavigationInitial(currentIndex: event.selectedIndex));
      }
    });
  }
}
