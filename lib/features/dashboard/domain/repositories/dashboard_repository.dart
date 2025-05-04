import 'package:moneymemos/features/dashboard/data/model/bond_model.dart';

abstract class DashboardRepository {
  Future<List<BondModel>> loadBonds();
}
