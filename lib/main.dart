import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruitapp/core/utliz/constant.dart';
import 'package:fruitapp/core/utliz/cubit/lang_cubit/cubit/language_cubit.dart';
import 'package:fruitapp/core/utliz/function_hulper/service_locator.dart';
import 'package:fruitapp/core/utliz/services/product_model_adaptor.dart';
import 'package:fruitapp/core/utliz/services/shared_prefrence_singlton.dart';
import 'package:fruitapp/core/utliz/services/subpase_storage_service.dart';
import 'package:fruitapp/features/Checkout/domain/repos/orders/order_repo.dart';
import 'package:fruitapp/features/Checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';
import 'package:fruitapp/features/account/presentation/manager/them_cubit/cubit/them_cubit.dart';
import 'package:fruitapp/features/dashbord/data/model/product_model.dart';
import 'package:fruitapp/features/splash_view/presentation/views/splash_view.dart';
import 'package:fruitapp/firebase_options.dart';
import 'package:fruitapp/generated/l10n.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefrenceSinglton.intial();
  await SubpaseStorageService.initSupbase();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>(Constant.kfavoriteIProudct);
  setupGetIt();
  runApp(MultiBlocProvider(
 
    providers: [
      BlocProvider(
        create: (context) => LanguageCubit(),
       
      ),
         BlocProvider(
        create: (context) => ThemCubit(),
       
      ),
       BlocProvider(
        create: (context) => AddOrderCubit(getIt<OrderRepo>()),
       
      ),
        
    ],
    child: const FruitsHub(),
  ));
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocBuilder<ThemCubit, ThemeMode>(
            builder: (context, themMode) {
              return BlocBuilder<LanguageCubit, Locale>(
                      builder: (context, local) {
                        return MaterialApp(
                          theme: ThemeData.light(),
                          darkTheme: ThemeData.dark(),
                          themeMode: themMode,
                          locale: local,
                          debugShowCheckedModeBanner: false,
                          localizationsDelegates: [
                            S.delegate,
                            GlobalMaterialLocalizations.delegate,
                            GlobalWidgetsLocalizations.delegate,
                            GlobalCupertinoLocalizations.delegate,
                          ],
                          supportedLocales: S.delegate.supportedLocales,
                          home: SplashView(),
                        );
                      },
                    );
            },
          );
        });
  }
}
