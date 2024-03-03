import 'package:get_it/get_it.dart';
import 'package:interview/feature/advertisement/data/repository/advertisement_repo.dart';
import 'package:interview/feature/advertisement/domain/usecase/advertisement_usecase.dart';
import 'package:interview/feature/home/domain/usecase/home_usecase.dart';

final getIt = GetIt.instance;

void serviceLocatorIntialize() {
  getIt.registerFactory(() => AdvertisementRepository());
  getIt.registerLazySingleton(
      () => AdvertisementUseCase(advertisementRepository: getIt()));
  getIt.registerLazySingleton(() => HomeUsecase());
}
