import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/models/invoice_model.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/presentation/widgets/order_invoice_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';

import '../../../../../core/helpers/export.dart';
import 'widgets/scanned_product_item_widget.dart';
import 'widgets/variants_bottom_sheet.dart';
import 'widgets/variant_option_tile.dart';

part 'prescription_order_controller.dart';
part 'prescription_order.dart';
