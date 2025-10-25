
enum ProductStatusEnum {
  noEdit,
  modified,
  replaced,
  normal;


  String getName(){
    switch(this){
      case ProductStatusEnum.noEdit:
       return "";
      case ProductStatusEnum.modified:
        return "Modified";
      case ProductStatusEnum.replaced:
        return "Replaced";
      case ProductStatusEnum.normal:
        return "";
    }
  }

}