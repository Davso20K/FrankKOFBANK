import 'Compte.dart';

class Client {
  String nom, prenom, tel, email;
  DateTime dateNaiss;
  Compte compte;

  Client(
      this.nom, this.prenom, this.tel, this.email, this.dateNaiss, this.compte);

  Compte creercompte(TypeCompte typeCompte) {
    Compte compte = Compte(this, typeCompte);
    return compte;
  }
}
