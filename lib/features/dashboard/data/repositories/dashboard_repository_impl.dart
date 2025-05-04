import 'package:injectable/injectable.dart';
import 'package:moneymemos/core/errors/server_errors.dart';
import 'package:moneymemos/features/dashboard/data/model/bond_model.dart';
import 'package:moneymemos/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:moneymemos/services/network/api_client.dart';

@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl extends DashboardRepository {
  final ApiClient apiClient;

  DashboardRepositoryImpl({required this.apiClient});
  @override
  Future<List<BondModel>> loadBonds() async {
    try {
      /// call load bonds api
      return (await apiClient.loadBonds()).data ?? [];
    } catch (error) {
      /// throw exception if any
      throw ServerError.withError(error: error);
    }
  }
}
