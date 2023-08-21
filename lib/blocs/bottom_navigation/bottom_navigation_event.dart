part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationEvent {}

class TabSelectedEvent extends BottomNavigationEvent {
  final int selectedIndex;

  TabSelectedEvent(this.selectedIndex);
}
