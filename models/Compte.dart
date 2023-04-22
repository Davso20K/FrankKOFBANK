import 'client.dart';

enum TypeCompte { EPARGNE, COURANT }

class Compte {
  String? numCpt;
  static int compteur = 0;
  double solde = 0;
  DateTime? dateCrea;
  TypeCompte? typeCompte;
  Client client;

  Compte(this.client, this.typeCompte) {
    this.numCpt;
    if (compteur < 1000) {
      compteur++;
      numCpt = "KOFBANK-" +
          this.client.nom.substring(0, 1) +
          this.client.prenom.substring(0, 1) +
          "-$compteur";
      this.dateCrea = DateTime.now();
      this.solde = 0;
    }
  }

  faireDepot(double montant) {
    this.solde += montant;
  }

  faireRetrait(double montant) {
    if (this.solde >= montant) {
      this.solde -= montant;
      return true;
    }
    return false;
  }

  faireTransfert(Compte dest, double montant) {
    if (this.faireRetrait(montant)) {
      dest.faireDepot(montant);
    }
  }
}
