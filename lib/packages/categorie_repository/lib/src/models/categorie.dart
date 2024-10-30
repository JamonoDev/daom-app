

import '../entities/entities.dart';

class Categorie {
	String categorieId;
	String categorie;
	String type;
	String? picture;

	Categorie({
		required this.categorieId,
		required this.categorie,
		required this.type,
		this.picture
	});

	/// Empty Categorie.
  static final empty = Categorie(
		categorieId: '', 
		categorie: '',
		type: '',
		picture: ''
	);

	/// Modify Categorie parameters
	Categorie copyWith({
    String? categorieId,
    String? categorie,
    String? type,
    String? picture,
  }) {
    return Categorie(
      categorieId: categorieId ?? this.categorieId,
      categorie: categorie ?? this.categorie,
      type: type ?? this.type,
      picture: picture ?? this.picture,
    );
  }

	/// Convenience getter to determine whether the current Categorie is empty.
  bool get isEmpty => this == Categorie.empty;

  /// Convenience getter to determine whether the current Categorie is not empty.
  bool get isNotEmpty => this != Categorie.empty;

	CategorieEntity toEntity() {
    return CategorieEntity(
      categorieId: categorieId,
      categorie: categorie,
      type: type,
      picture: picture,
    );
  }

	static Categorie fromEntity(CategorieEntity entity) {
    return Categorie(
      categorieId: entity.categorieId,
      categorie: entity.categorie,
      type: entity.type,
      picture: entity.picture,
    );
  }

	@override
  String toString() {
    return '''Categorie: {
      categorieId: $categorieId
      categorie: $categorie
      type: $type
      picture: $picture
    }''';
  }
	
}