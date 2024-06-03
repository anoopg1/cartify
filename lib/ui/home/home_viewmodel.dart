import 'package:cartify/gen/assets.gen.dart';
import 'package:cartify/model/product_model/product.dart';
import 'package:cartify/services/api_services.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  final carouselWidgets = [
    Assets.images.newOffer.image(),
    Assets.images.specialOffer.image(),
    Assets.images.watch.image(),
  ];
  ApiServices apiServices = ApiServices();

  List<Product>? productlist = [];
  late final categoryList;

  Future initFunctions() async {
    await getProductList();
    await getCategoryList();
  }

  Future getProductList() async {
    productlist = await apiServices.fetchProducts();
  }

  Future getCategoryList() async {
    categoryList = await apiServices.fetchCategories();
    print("categoryList : $categoryList");
    return categoryList;
  }
}
