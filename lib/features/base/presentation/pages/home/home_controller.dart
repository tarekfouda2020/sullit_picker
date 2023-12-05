part of 'home_imports.dart';

class HomeController {

  final BaseBloc<int> homeTabCubit = BaseBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<IconData> tabs = [
    Icons.home,
    Icons.map_outlined,
    Icons.face,
  ];

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 3, vsync: ticker);
  }

  void animateTabsPages(int index, BuildContext context) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.successState(index);
      tabController.animateTo(index);
    }
  }

}