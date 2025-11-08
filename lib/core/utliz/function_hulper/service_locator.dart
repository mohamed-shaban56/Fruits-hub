import 'package:dio/dio.dart';
import 'package:fruitapp/core/utliz/repo/stripe_repo/stripe_repo_implementation.dart';
import 'package:fruitapp/core/utliz/repo/stripe_repo/stripe_repo.dart';
import 'package:fruitapp/core/utliz/services/api_service.dart';
import 'package:fruitapp/core/utliz/services/stripe_remote_data_source.dart';
import 'package:fruitapp/core/utliz/services/stripe_service.dart';
import 'package:fruitapp/features/auth/domain/repo/update_user_data_repo.dart';
import 'package:fruitapp/features/auth/domain/repo/update_user_data_repo_implement.dart';
import 'package:fruitapp/features/order_feature/domain/repos/update_order_status_repo.dart';
import 'package:fruitapp/features/order_feature/domain/repos/update_order_status_repo_implement.dart';
import 'package:get_it/get_it.dart';
import 'package:fruitapp/core/utliz/services/auth_service.dart';
import 'package:fruitapp/core/utliz/services/data_base_service.dart';
import 'package:fruitapp/core/utliz/services/firebase_service.dart';
import 'package:fruitapp/core/utliz/services/firestore_service.dart';
import 'package:fruitapp/core/utliz/services/storage_service.dart';
import 'package:fruitapp/core/utliz/services/subpase_storage_service.dart';
import 'package:fruitapp/features/Checkout/domain/repos/orders/order_repo.dart';
import 'package:fruitapp/features/Checkout/domain/repos/orders/order_repo_implement.dart';
import 'package:fruitapp/features/dashbord/domain/repo/image_repo/image_repo.dart';
import 'package:fruitapp/features/dashbord/domain/repo/image_repo/image_repo_implement.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo.dart';
import 'package:fruitapp/features/dashbord/domain/repo/product_repo/product_repo_implement.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo.dart';
import 'package:fruitapp/features/auth/domain/repo/auth_repo_implement.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo.dart';
import 'package:fruitapp/features/order_feature/domain/get_order_repo_implement.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Services
  getIt.registerLazySingleton<AuthService>(() => FirebaseService());
  getIt.registerLazySingleton<DatabaseService>(() => FirestoreService());
  getIt.registerLazySingleton<StorageService>(() => SubpaseStorageService());

  // Repositories
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImplement(
      authService: getIt<AuthService>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );
   getIt.registerLazySingleton<ApiService>(
    () => ApiService(Dio()),
  );
    getIt.registerLazySingleton<StripeService>(
    () => StripeService(StripeRemoteDataSource(apiService: getIt<ApiService>())),
  );

  getIt.registerLazySingleton<FileImageRepo>(
    () => FileImageRepoImplement(getIt<StorageService>()),
  );

  getIt.registerLazySingleton<ProductRepo>(
    () => ProductRepoImplement(getIt<DatabaseService>()),
  );

  getIt.registerLazySingleton<OrderRepo>(
    () => OrderRepoImplement(getIt<DatabaseService>()),
  );

  getIt.registerLazySingleton<GetOrderRepo>(
    () => GetOrderRepoImplement(databaseService: getIt<DatabaseService>()),
  );

    getIt.registerLazySingleton<UpdateUserDataRepo>(
    () => UpdateUserDataRepoImplement(authService: getIt<AuthService>())
  );
   getIt.registerLazySingleton<UpdateOrderStatusRepo>(
    () => UpdateOrderStatusRepoImplement(databaseService: getIt<DatabaseService>()));

      getIt.registerLazySingleton<StripeRepo>(
    () => StripeRepoImplementation(stripeService:getIt<StripeService>() ),
  );
}
