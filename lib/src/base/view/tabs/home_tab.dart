import 'package:flutter/material.dart';
import 'package:kitanda/src/commons/themes/theme.dart';
import 'package:kitanda/src/commons/widgets/name_app.dart';

import '../../../commons/widgets/custom_textfield.dart';
import '../../repositories/app_data.dart' as appdata;
import '../components/category_tile.dart';
import '../components/item_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String categorySelected = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialTheme.lightScheme().surfaceDim,
      // APPBAR(titulo=Greengrocer + ICONE DO CARRINHO com BADGE
      appBar: AppBar(
        backgroundColor: MaterialTheme.lightScheme().surfaceDim,
        elevation: 0,
        title: const NameApp(sizeIcon: 28),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: MaterialTheme.lightScheme().primary,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // CAMPO DE PESQUISA
          const CustomTextField(
            labelText: 'Pesquise aqui...',
            prefixIcon: Icons.search,
          ),
          // LISTA DE CATEGORIAS
          Container(
            padding: const EdgeInsets.only(left: 25, bottom: 20),
            height: 40,
            child: ListView.separated(
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemCount: appdata.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      categorySelected = appdata.categories[index];
                    });
                  },
                  category: appdata.categories[index],
                  isSelected: categorySelected == appdata.categories[index],
                );
              },
            ),
          ),
          // GRID ITENS
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const BouncingScrollPhysics(),
              itemCount: appdata.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 8.5 / 11.5,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (_, index) {
                return ItemTile(
                  item: appdata.items[index],
                );
              },
            ),
          ),
        ],
      ),
      // CAMPO DE PESQUISA com ICONE PESQUISAR
      // CATEGORIAS
      // GRID
    );
  }
}
