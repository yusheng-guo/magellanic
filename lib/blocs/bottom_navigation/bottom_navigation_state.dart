part of 'bottom_navigation_bloc.dart';

// @immutable
// sealed class BottomNavigationState {}

// final class BottomNavigationInitial extends BottomNavigationState {
//   final int currentIndex;

//   BottomNavigationInitial(this.currentIndex);
// }

@immutable
abstract class BottomNavigationState {
  final int currentIndex;

  const BottomNavigationState({required this.currentIndex});
}

class BottomNavigationInitial extends BottomNavigationState {
  const BottomNavigationInitial({required super.currentIndex});
}
