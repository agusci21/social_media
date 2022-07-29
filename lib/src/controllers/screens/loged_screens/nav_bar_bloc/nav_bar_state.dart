part of 'nav_bar_bloc.dart';

class NavBarState extends Equatable {
  const NavBarState(this.selectedOption);
  final int selectedOption;
  
  @override
  List<Object> get props => [selectedOption];
}

