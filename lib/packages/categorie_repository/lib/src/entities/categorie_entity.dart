

import 'package:equatable/equatable.dart';

class CategorieEntity extends Equatable {
	final String categorieId;
	final String categorie;
	final String type;
	final String? picture;

	const CategorieEntity({
		required this.categorieId,
		required this.categorie,
		required this.type,
		this.picture,
	});

	Map<String, Object?> toDocument() {
    return {
      'categorieId': categorieId,
			'categorie': categorie,
      'type': type,
      'picture': picture,
    };
  }

	static CategorieEntity fromDocument(Map<String, dynamic> doc) {
    return CategorieEntity(
      categorieId: doc['categorieId'] as String,
			categorie: doc['categorie'] as String,
      type: doc['type'] as String,
      picture: doc['picture'] as String?
    );
  }
	
	@override
	List<Object?> get props => [categorieId, categorie, type, picture];

	@override
  String toString() {
    return '''UserEntity: {
      categorieId: $categorieId
      categorie: $categorie
      type: $type
      picture: $picture
    }''';
  }
}