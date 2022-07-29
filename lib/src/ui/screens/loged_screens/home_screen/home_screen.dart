import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/src/controllers/screens/loged_screens/nav_bar_bloc/nav_bar_bloc.dart';
import 'package:social_media/src/ui/screens/loged_screens/home_screen/components/home_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarBloc(),
      child: BlocBuilder<NavBarBloc, NavBarState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: HomeNavBar(
                onTap: (value) =>
                    context.read<NavBarBloc>().add(SelectOption(value)),
                currentIndex: state.selectedOption),
          );
        },
      ),
    );
  }
}
