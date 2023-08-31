import 'package:flutter/material.dart';
import 'package:flutter_challenge_guarani/app/modules/home/presentation/widgets/pokemon_list_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../domain/entities/pokemon_list_entity.dart';
import 'controllers/home_controller.dart';
import 'widgets/error_generic_widget.dart';
import 'widgets/home_navigation_bottom_bar.dart';
import 'widgets/pokemon_not_find_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 41, top: 51),
          //   child: HomeSearchPokemonWidget(search: (value) {
          //     setState(() {
          //       controller.setSearchPokemon(value);
          //     });
          //   }),
          // ),
          FutureBuilder<PokemonListEntity>(
            future: controller.getPokemonList(controller.getLinkInitial()),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 40),
                    child: Column(
                      children: const [
                        Center(
                          child: CircularProgressIndicator(color: Colors.green),
                        ),
                      ],
                    ),
                  );
                case ConnectionState.none:
                  return const LinearProgressIndicator(
                    value: 1,
                    color: Colors.red,
                  );
                default:
                  if (snapshot.hasData) {
                    if (snapshot.data!.pokemons.isNotEmpty) {
                      return Column(
                        children: [
                          PokemonListWidget(
                            listPokemon: snapshot.data,
                          ),
                          HomeNavigationBottomBar(
                            nextPage: (value) {
                              setState(() {
                                controller.getPokemonList(value);
                              });
                            },
                            listPokemon: snapshot.data,
                          )
                        ],
                      );
                    } else {
                      return const PokemonNotFindWidget();
                    }
                  } else {
                    return const ErrorGenericWidget();
                  }
              }
            },
          )
        ],
      ),
    );
  }
}
