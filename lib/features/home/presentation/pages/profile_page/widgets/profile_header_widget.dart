
import 'profile_page_widgets_imports.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){},
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 63,height: 63,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  shape: BoxShape.circle
                ),
                child: UnconstrainedBox(child: SvgPicture.asset(Res.personIcon,width: 40,height: 40,)),
              ),
              PositionedDirectional(
                end: -5, bottom: -3,
                child: Container(
                  width: 32,height: 32,
                  decoration: BoxDecoration(
                    color: context.colors.softRose,
                      shape: BoxShape.circle
                  ),
                  child: UnconstrainedBox(child: SvgPicture.asset(Res.pencilIcon,width: 12, height: 12,)),
                ),
              )
            ],
          ),
        ),
        Gaps.hGap22,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text("Ahmed Mohamed",
             style: AppTextStyle.s18_w700(color: context.colors.black),
             ),
              Gaps.vGap5,
              const ProfileRatingWidget(),
              Gaps.vGap8,
              Text("+971 54568965",
              style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              Gaps.vGap7,
              Text("Ahmed@Example.com",
              style: AppTextStyle.s14_w400(color: context.colors.black)
              ),
            ],
          ),
        )
      ],
    );
  }
} 