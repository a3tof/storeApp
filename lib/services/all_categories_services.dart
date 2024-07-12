import 'package:store_app/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    // ignore: missing_required_param
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
