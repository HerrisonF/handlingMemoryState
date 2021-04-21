import 'package:mobx/mobx.dart';

import '../product_model.dart';
import '../repository.dart';

part 'teste_store.g.dart';

class TesteStore = _TesteStore with _$TesteStore;

abstract class _TesteStore with Store {

  Repository repository = Repository();

  ObservableList<Product> listProduct = ObservableList();

  @action
  setList(List<Product> list){
    listProduct.clear();
    listProduct.addAll(list);
  }

  getProduct() async {
    if(listProduct.length <= 0) {
      setList(await repository.getProduct());
    }
  }

}