import '../order_details/order_details_imports.dart';

class OrderHistoryDetailsController {


 late final ShowOrderRequester detailsRequester;


 OrderHistoryDetailsController(int id){
   detailsRequester =  ShowOrderRequester(id: id);
   detailsRequester.request(fromRemote: false);
   detailsRequester.request();
 }



}