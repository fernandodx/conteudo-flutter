import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/models.dart';

// ExploreData serves as a data container that holds
//list of restaurants, food categories, and friend posts.
class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  ExploreData(this.restaurants, this.categories, this.friendPosts);
}

// Mock Yummy service that grabs sample data to mock up a food app request/response
class MockYummyService {
  final String _baseUrl = "https://app-restaurant.wiremockapi.cloud";
  // Batch request that gets both today recipes and friend's feed
  Future<ExploreData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final categories = await _getCategories();
    final friendPosts = await _getFriendFeed();

    return ExploreData(restaurants, categories, friendPosts);
  }

  Future<List<FoodCategory>> _getCategories() async {
    final response = await http.get(Uri.parse('$_baseUrl/categories'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => FoodCategory.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os categorias de comida');
    }
  }

  Future<List<Post>> _getFriendFeed() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os comentário feed');
    }
  }

  Future<List<Restaurant>> _getRestaurants() async {
    final response = await http.get(Uri.parse('$_baseUrl/restaurants'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Restaurant.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os restaurantes');
    }
  }
}
