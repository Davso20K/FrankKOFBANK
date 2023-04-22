import 'Compte.dart';

class Client {
  String nom, prenom, tel, email;
  DateTime dateNaiss;
  late Compte compte;
  Client.SP({
    this.nom = "",
    this.prenom = "",
    this.tel = "",
    this.email = "",
    DateTime? dateNaiss,
  }) : dateNaiss = dateNaiss ?? DateTime.now();
  Client(
      this.nom, this.prenom, this.tel, this.email, this.dateNaiss, this.compte);

  Compte creercompte(TypeCompte typeCompte) {
    Compte compte = Compte(this, typeCompte);
    return compte;
  }
}
