import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_reason_model.freezed.dart';
part 'report_reason_model.g.dart';

@unfreezed
@immutable
class ReportReasonModel with _$ReportReasonModel {
  const ReportReasonModel._();
   factory ReportReasonModel({
    required String key,
    required String label,
    @JsonKey(name: "is_selected",defaultValue: false) bool? isSelected,
  }) = _ReportReasonModel;

   bool get isOther => key == "other";

  factory ReportReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ReportReasonModelFromJson(json);


}
