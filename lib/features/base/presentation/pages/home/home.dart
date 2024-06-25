part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Home"),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          GenericTextField(
            controller: controller.minutesController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) {},
            label: "Minutes",
          ),
          GenericTextField(
            controller: controller.secondsController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) {},
            margin: const EdgeInsets.only(top: 15),
            label: "Seconds",
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: ()=> controller.runTimer(),
            child: const Text(
              "Start",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ),
          const SizedBox(
            height: 30,
          ),
          ObsValueConsumer(
            observable: controller.secondObs,
            builder: (context, seconds) {
              return Text(
                "${(seconds / 60).floor()} : ${seconds % 60}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
