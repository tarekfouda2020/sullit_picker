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
        children: [
          ObsValueConsumer(
            observable: controller.termsObs,
            builder: (context, value) {
              return Checkbox(
                value: value,
                onChanged: (value) {
                  controller.termsObs.setValue(value!);
                },
              );
            },
          ),

          BaseBlocBuilder(
            bloc: controller.bloc,
            onSuccessWidget: (data) {
              return Text(data);
            },
            onLoadingWidget: (context) {
              return const Center(child: CircularProgressIndicator());
            },
            onFailedWidget: (context, error, callback) {
              return Center(
                child: Column(
                  children: [
                    const Text("error"),
                    ElevatedButton(
                      onPressed: () {
                        callback();
                      },
                      child: const Text("Retry"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
