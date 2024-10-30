import '../entities/commande_entity.dart';

class Commande extends CommandeEntity {
  Commande({
    required String id,
    required String matStudent,
    required String type,
    required double amount,
  }) : super(
          id: id,
          matStudent: matStudent,
          type: type,
          amount: amount,
        );

  // Convertir le modèle en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'matStudent': matStudent,
      'type': type,
      'totalAmount': amount,
    };
  }

  // Créer une commande à partir d'un JSON
  factory Commande.fromJson(Map<String, dynamic> json) {
    return Commande(
        id: json['id'],
        matStudent: json['matStudent'],
        type: json['type'],
        amount: json['totalAmount'].toDouble());
  }
}
