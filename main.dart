import 'dart:io';
import 'dart:js_interop';
import 'models/client.dart';
import 'models/Compte.dart';

void main() {
  String response = "OUI";

  while (response == "OUI") {
    faireOperation();
    print("Voulez-vous poursuivre d'autres opérations (OUI/NON)?");
    response = (stdin.readLineSync()!.toUpperCase());
  }
}

faireOperation() {
  int Utilresponse = 0;

  ChoixMenu() {
    switch (Utilresponse) {
      case 1:
        ajouterClient();
        break;
      case 2:
        listerClient();
        break;
      case 3:
        faireUnDepot();
        break;
      case 4:
        faireUnRetrait();
        break;
      case 5:
        transfererArgent();
        break;
    }
  }

  do {
    afficherMenu();
    Utilresponse = int.parse(stdin.readLineSync()!);
    ChoixMenu();
  } while (Utilresponse < 0 || Utilresponse > 6);
}

afficherMenu() {
  print("--------Bienvenu sur KOFBANK-----------");
  print("1 - Ajouter un client");
  print("2 - Liste des Clients");
  print("3 - Faire dépôt");
  print("4 - Faire un retrait");
  print("5 - Transférer de l'argent\n");
  print("Bonjour! Quelle Opération voulez-vous effectuer?");
}

ajouterClient() {
  print("Entrer votre nom");
  String nom = stdin.readLineSync()!.toString();
  print("Entrer votre prenom");
  String prenom = stdin.readLineSync()!.toString();
  print("Entrer votre date de naissance (aaaa-mm-jj):");
  DateTime date_naiss = DateTime.parse(stdin.readLineSync().toString());
  print("Entrer votre Numero de téléphone ");
  String tel = (stdin.readLineSync().toString());
  print("Entrer votre addresse mail");
  String email = stdin.readLineSync().toString();

  print("Quel type de compte voulez-vous créer(1-EPARGNE;2-COURANT)");
  int typeC = int.parse(stdin.readLineSync()!);
  TypeCompte type = TypeCompte.values.elementAt(typeC - 1);
}

listerClient() {
  print("Bossou");
}

faireUnDepot() {}
faireUnRetrait() {}
transfererArgent() {}
