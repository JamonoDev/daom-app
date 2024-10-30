import 'models/models.dart';
import '../categorie_repository.dart';

abstract class CategorieRepository {

	Future<List<Categorie>> getCategorie();

}