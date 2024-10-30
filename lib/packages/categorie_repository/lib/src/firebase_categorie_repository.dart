import 'dart:developer';
import 'package:categorie_repository/categorie_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:categorie_repository/src/models/categorie.dart';
// import 'package:uuid/uuid.dart';
import 'categorie_repo.dart';

class FirebaseCategorieRepository implements CategorieRepository {

	final categorieCollection = FirebaseFirestore.instance.collection('categories');


  @override
  Future<List<Categorie>> getCategorie() {
    try {
      return categorieCollection
				.get()
				.then((value) => value.docs.map((e) => 
					Categorie.fromEntity(CategorieEntity.fromDocument(e.data()))
				).toList());
    } catch (e) {
      print(e.toString());
			rethrow;
    }
  }

}