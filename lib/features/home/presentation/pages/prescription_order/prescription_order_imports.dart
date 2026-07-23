import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/helpers/barcode_service.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/home/data/enum/product_status_enum.dart';
import 'package:flutter_tdd/features/home/data/model/search_barcode_model/search_barcode_model.dart';
import 'package:flutter_tdd/features/home/domain/entity/replaced_product_params.dart';
import 'package:flutter_tdd/features/home/domain/repositories/home_repositories.dart';
import 'package:flutter_tdd/features/home/data/model/accept_prescription_preview_model/accept_prescription_preview_model.dart';
import 'package:flutter_tdd/features/home/data/model/prescription_order_details/pharmacy_order_model.dart';
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/widgets/prescrption_bottom_nav_widget.dart';
import 'package:flutter_tdd/features/orders/data/model/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/params/prescription_preview_params.dart';
import 'package:flutter_tdd/features/orders/domain/params/accept_prescription_params.dart';

import '../../../../../core/helpers/export.dart';
import 'widgets/insurance_discount_dialog_widget.dart';
import 'widgets/item_insurance_coverage_dialog_widget.dart';
import 'widgets/item_instructions_dialog_widget.dart';
import 'widgets/prescription_bags_count_dialog_widget.dart';
import 'widgets/prescription_attachments_row_widget.dart';
import 'widgets/prescription_attachments_sheet_widget.dart';
import 'widgets/prescription_customer_card_widget.dart';
import 'widgets/prescription_customer_card_shimmer_widget.dart';
import 'widgets/prescription_customer_sheet_widget.dart';
import 'widgets/prescription_image_viewer_sheet_widget.dart';
import 'widgets/prescription_insurance_company_sheet_widget.dart';
import 'widgets/prescription_invoice_sheet_widget.dart';
import 'widgets/prescription_products_shimmer_widget.dart';
import 'widgets/prescription_order_summary_widget.dart';
import 'widgets/scanned_product_item_widget.dart';
import 'widgets/variants_bottom_sheet.dart';
import 'widgets/variant_option_tile.dart';

part 'prescription_order_controller.dart';
part 'prescription_order.dart';
