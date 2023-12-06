import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_form_option.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/local_options_requester.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/base_options_display_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/option_item_widget.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/selectable_option_item_widget.dart';
import 'package:flutter_tdd/features/auth/domain/models/user_domain_model.dart';

class OptionFieldExample extends StatefulWidget {
  const OptionFieldExample({super.key});

  @override
  State<OptionFieldExample> createState() => _OptionFieldExampleState();
}

class _OptionFieldExampleState extends State<OptionFieldExample> {

  List<UserDomainModel> selectedUsers = [];

  @override
  Widget build(BuildContext context) {
    return BaseFormOption<UserDomainModel>(
      hintText: Translate.of(context).failureActions,
      bottomSheetTitle: Translate.of(context).failureActions,
      showSearch: false,
      isMultiple: true,
      showDecoration: true,
      optionsRequester: LocalOptionsRequester(
        valueMainTitleGetter: (value) => value?.firstName??"",
        options: _getOptions(),
      ),
      selectedItems: selectedUsers,
      selectedOptionBuilder: (actions) {
        return BaseOptionsDisplayWidget<UserDomainModel>(
          titleGetter: (value) => value.firstName,
          selectedOptions: actions,
        );
      },
      optionItemBuilder: (user, isSelected) {
        return SelectableOptionItemWidget(
          isSelected: isSelected,
          optionItemWidget: OptionItemWidget(
            title: user.firstName,
          ),
        );
      },
      valueIdGetter: (value) => value?.id,
      valueMainTitleGetter: (value) => value?.firstName,
      onSaveValue: (actions, iMultiple) {
        selectedUsers = actions??[];
      },
      onClearPressed: () {
        selectedUsers = [];
      },
    );
  }

  List<UserDomainModel> _getOptions() => [UserDomainModel(email: "", firstName: "",id: "1", lastName: "", phone: ""), UserDomainModel(email: "", firstName: "",id: "2", lastName: "", phone: ""),];
}
