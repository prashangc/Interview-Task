import 'package:interview/core/services/state/state_handler_bloc.dart';
import 'package:interview/core/usecase/usecase.dart';
import 'package:interview/feature/advertisement/data/model/advertisement_model.dart';
import 'package:interview/feature/advertisement/data/repository/advertisement_repo.dart';

class AdvertisementUseCase extends UseCase<AdvertisementModel, void> {
  final AdvertisementRepository advertisementRepository;
  AdvertisementUseCase({required this.advertisementRepository});

  @override
  List<AdvertisementModel> call({void params}) {
    return advertisementRepository.getAdvertisement();
  }

  StateHandlerBloc sliderBloc = StateHandlerBloc();
}
