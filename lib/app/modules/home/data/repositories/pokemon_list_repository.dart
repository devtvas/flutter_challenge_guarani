import 'package:dio/dio.dart';
import 'package:flutter_challenge_guarani/app/modules/home/domain/entities/pokemon_list_entity.dart';

import '../../domain/repositories/pokemon_list_repository.dart';
import '../models/pokemon_list_model.dart';

class PokemonListRepository extends IPokemonListRepository {
  final Dio _dio = Dio();
  @override
  Future<PokemonListEntity> getPokemonList({required String list}) async {
    final _response = await _dio.get(list);
    return PokemonListModel.fromJson(_response.data);
  }
}
