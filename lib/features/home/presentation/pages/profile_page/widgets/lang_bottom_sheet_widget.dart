
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_header_widget.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_item_widget.dart';
import 'package:flutter_tdd/features/home/data/model/lang_model/lang_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page_controller.dart';

import 'profile_page_widgets_imports.dart';

class LangBottomSheetWidget extends StatelessWidget {
  final ProfilePageController controller;

  const LangBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll20Px ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetHeaderWidget(
            title: '',
          ),
          Gaps.vGap20,
          RequesterConsumer<List<LangModel>>(
            requester: controller.langRequester,
            successBuilder: (BuildContext context, data, bool isLoading) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 15,
                  children: List.generate(data.length, (index) {
                    var item = data[index];
                    return BottomSheetItemWidget(
                        onSelect: ()=> controller.changeLang(item, context),
                        isSelected: item.isDefault!,
                        title: item.name,
                        image: item.logo,
                      fit: BoxFit.cover,
                    );
                  },),
                ),
              );
            },
            failureBuilder: (BuildContext context, BaseError error, void Function() callback) {
              return const SizedBox();
            },
            loadingBuilder: (BuildContext context) {
              return const Center(child: CircularProgressIndicator(),);
            },
          ),
        ],
      ),
    );
  }
}
