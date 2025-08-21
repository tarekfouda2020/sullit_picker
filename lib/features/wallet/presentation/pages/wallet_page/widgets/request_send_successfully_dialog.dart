import '../wallet_imports.dart';
class RequestSendSuccessfullyDialog extends StatelessWidget {
  const RequestSendSuccessfullyDialog({super.key,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.only(right: 15, left: 15, bottom: 130),
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gaps.vGap16,
            SvgPicture.asset(Res.doneImage),
            Gaps.vGap16,
            Text('Request Sent Successfully',
              style: AppTextStyle.s18_w700(color: context.colors.black),
            ),
            Gaps.vGap16,
          ],
        ),
      ),
    );
  }
}