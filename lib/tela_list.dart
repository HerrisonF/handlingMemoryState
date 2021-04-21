import 'package:flutter/material.dart';
import 'package:flutter_handling_memory/store/teste_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class TelaList extends StatefulWidget {
  @override
  _TelaListState createState() => _TelaListState();
}

class _TelaListState extends State<TelaList> {
  TesteStore testeStore = GetIt.I<TesteStore>();

  @override
  void initState() {
    print('Deu init');
    testeStore.getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Expanded(
          child: Center(
            child: testeStore.listProduct.length > 0
                ? ListView.builder(
                    itemCount: testeStore.listProduct.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network(
                          testeStore.listProduct[index].image,
                          height: 100,
                        ),
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        );
      },
    );
  }
}
