import 'home_imports.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';
import 'widgets/home_widgets_imports.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.initializeHome(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeaderWidget(),
              const SizedBox(height: 20),
              const CustomSearchBar(),
              const SizedBox(height: 20),
              const OrderNotification(),
              const SizedBox(height: 20),
              const UnpaidBadge(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TotalAmountWidget(),
                    const SizedBox(height: 20),
                    InfoSection(
                      title: Translate.s.customer_name,
                      content: 'Mahmoud Mohamed',
                      iconPath: Res.sectionIcon1,
                    ),
                    const SizedBox(height: 12),
                    InfoSection(
                      title: Translate.s.payment_method,
                      content: Translate.s.cash_on_delivery,
                      iconPath: Res.sectionIcon2,
                    ),
                    const SizedBox(height: 12),
                    const AddressSectionWidget(),
                    const SizedBox(height: 65),
                    ActionButton(text: Translate.s.arrived),
                    const SizedBox(height: 22),
                    const BottomIndicatorWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}