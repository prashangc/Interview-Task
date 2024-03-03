import 'package:interview/feature/breakfast/data/model/breakfast_model.dart';

class PaginationModel {
  final int status;
  final List<BreakfastModel> breakfastModel;

  const PaginationModel({required this.status, required this.breakfastModel});
}
