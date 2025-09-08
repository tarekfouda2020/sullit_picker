import 'stores_page_widgets_imports.dart';

class WorkWithStoresWidget extends StatelessWidget {
  final List<StoreModel>? stores;
  final StoresPageController controller;
  const WorkWithStoresWidget({super.key, this.stores, required this.controller});

  @override
  Widget build(BuildContext context) {
   return stores != null
       ? ListView.builder(
     itemCount: stores!.length,
     padding: Dimens.paddingH20Px,
     itemBuilder: (context, index) {
         return Padding(
           padding: const EdgeInsets.only(bottom: 16),
           child: StoresItemWidget(
             data: stores!,
             onRefresh: (StoreModel? item) {  },
             index: index,
           ),
         );
       },)
       :_pagedList();
  }




Widget _pagedList(){
    return PagedListView<int, StoreModel>(
      pagingController: controller.pagingController,
     padding: Dimens.paddingH20Px ,
      builderDelegate: PagedChildBuilderDelegate<StoreModel>(
        itemBuilder: (context, stores, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: StoresItemWidget(
              data: controller.pagingController.itemList!,
              index: index,
              onRefresh: (StoreModel? item) {}
          ),
        ),
        firstPageProgressIndicatorBuilder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: List.generate(4, (index) {
                return BaseShimmerWidget(
                    child: Container(
                      width: 200,
                      decoration: const BoxDecoration(
                          borderRadius: Dimens.borderRadius30PX
                      ),
                    )
                );
              },),
            ),
          );
        },
        newPageProgressIndicatorBuilder: (context) => Center(
          child: SizedBox(
            child: SizedBox(
              width: 30, height: 30,
              child: CircularProgressIndicator.adaptive(
                backgroundColor: context.colors.primary,
              ),
            ),
          ),
        ),
        firstPageErrorIndicatorBuilder: (context) => Gaps.empty,
        newPageErrorIndicatorBuilder: (context) => Gaps.empty,
        noItemsFoundIndicatorBuilder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No stores found",
              style: AppTextStyle.s20_w500(color: context.colors.black),
            )
          ],
        ),
      ),
    );
}

}
