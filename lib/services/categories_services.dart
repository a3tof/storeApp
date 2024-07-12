import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(
            url: 'https://fakestoreapi.com/products/categories/$categoryName');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
