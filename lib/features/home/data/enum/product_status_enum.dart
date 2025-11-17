
enum ProductStatusEnum {
  noEdit,
  // weightModified,
  priceModified,
  qntModified,
  replaced,
  added,
  normal;


  String getName(){
    switch(this){
      case ProductStatusEnum.noEdit:
       return "";
      case ProductStatusEnum.priceModified:
        case ProductStatusEnum.qntModified:
        return "Modified";
      case ProductStatusEnum.replaced:
        return "Replaced";
        case ProductStatusEnum.added:
        return "Replaced";
      case ProductStatusEnum.normal:
        return "";
    }
  }


  bool get isQntModified => this == ProductStatusEnum.qntModified;

  bool get isPriceModified => this == ProductStatusEnum.priceModified;

  bool get isReplaced => this == ProductStatusEnum.replaced;

  bool get isAdded => this == ProductStatusEnum.added;

  bool get isNormal => this == ProductStatusEnum.normal;

  bool get hasNoEdit => this == ProductStatusEnum.noEdit;

  bool get shouldShowStatus {
    switch (this) {
      case ProductStatusEnum.added:
      case ProductStatusEnum.replaced:
        return true;
      case ProductStatusEnum.qntModified:
      case ProductStatusEnum.priceModified:
      case ProductStatusEnum.normal:
      case ProductStatusEnum.noEdit:
        return false;
    }
  }

  bool get shouldShowDeleteIcon {
    switch (this) {
      case ProductStatusEnum.added:
      case ProductStatusEnum.replaced:
        return false;
      case ProductStatusEnum.qntModified:
      case ProductStatusEnum.priceModified:
      case ProductStatusEnum.normal:
      case ProductStatusEnum.noEdit:
        return true;
    }
  }

  bool get shouldShowEditPriceIcon {
    switch (this) {
      case ProductStatusEnum.added:
      case ProductStatusEnum.replaced:
      case ProductStatusEnum.qntModified:
        return false;
      case ProductStatusEnum.priceModified:
      case ProductStatusEnum.normal:
      case ProductStatusEnum.noEdit:
        return true;
    }
  }


}