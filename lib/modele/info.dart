import 'package:flutter/src/material/card.dart';

class Info {
  String bgImage;
  String titre;
  String description;
  num revue;
  List<String> images;

  Info(
    this.bgImage,
    this.titre,
    this.description,
    this.revue,
    this.images,
  );
  static List<Info> infos() {
    return [
      Info(
        'assets/images/img1.jpg',
        'Insécurité : au moins 4 soldats tués et plusieurs blessés (Diffa)',
        "Le vendredi 14 avril 2023, au moins quatre (04) soldats ont été tués et plusieurs autres grièvement blessés suite à l'explosion de deux (02) mines artisanales au passage de leur véhicule à Djalori et à Yébi, deux villages de la région de Diffa, dans le bassin du lac Tchad. En moins de 24h, c'est trois (03) véhicules des FDS qui ont ainsi été la cible d'engins explosifs improvisés (EEI, IED) dans cette zone frontalière du Nigéria où sévissent Boko Haram et surtout l'ISWAP, occasionnant la mort d'au moins six (06) soldats et plusieurs blessés dont des cas graves.",
        124,
        [
          'assets/images/img1.jpg',
        ],
      ),
      Info(
        'assets/images/img2.jpg',
        'Affaire des nigériennes interpellées en Arabie Saoudite',
        "Dans un communiqué en date du 13 avril 2023, le Ministère des Affaires étrangères et de la coopération a tenu à réagir à l'affaire qui défraie la chronique sur les réseaux sociaux depuis quelques jours et qui est relative à l'interpellation de ressortissantes nigériennes en Arabie Saoudite pour trafic de produits illicites notamment de drogue. Tout en confirmant l'interpellation à l'Aéroport de Médine de ressortissantes nigériennes pour transport de produits prohibés en Terre Sainte, et qui se trouvent actuellement en détention à Médine, le ministère des Affaires étrangères a tenu à préciser qu'à ce stade de l'instruction, aucun jugement n'a été rendu et aucune sentence prononcée relativement à cette affaire.",
        200,
        [
          'assets/images/img2.pjg',
        ],
      ),
      Info(
        'assets/images/img3.jpg',
        'Transparence des marchés publics : Stop Corruption',
        "Excellence Monsieur le Président de la République Le 02 avril 2021 vous avez affirmé votre engagement en faveur de la bonne gouvernance tout en annonçant une lutte acharnée contre la prédation des biens publics et le non-respect de la loi.Dans votre discours d’investiture, qui fera surement date dans le narratif politique au Niger en raison de son ton ferme et prometteur, vous déclarez ceci : « (...) le défi de la gouvernance est d'autant plus grand chez nous que prévaut une mentalité pas toujours en harmonie avec les valeurs de l'Etat de droit et ses exigences relatives à la primauté de la loi ainsi qu'à l'égalité de tous les citoyens. (...) mon propos consiste à relever que dans notre société nous avons tendance pour diverses raisons à nous accommoder même des comportements qui s'écartent des normes définies par nos lois et nos règlements ».",
        200,
        [
          'assets/images/img3.pjg',
        ],
      ),
      Info(
        'assets/images/img4.jpg',
        'Maradi : des dégâts importants suite à l incendie d un dépôt informel de carburant à Dakoro',
        "Dans la nuit du lundi 17 au mardi 18 avril, un violent incendie s'est déclaré dans une concession abritant un dépôt informel de carburant en plein centre-ville de Dakoro, dans la région de Maradi. Fort heureusement, on ne déplore aucune perte en vie humaine mais des dégâts matériels importants qui rappelle, une fois de plus, le risque sécuritaire que fait courir ces dépôts de carburants fraudés qui pullulent un peu partout dans les grandes villes du pays surtout dans les zones frontalières du Nigeria.",
        124,
        [
          'assets/images/img4.jpg',
        ],
      ),
      Info(
        'assets/images/img5.jpg',
        'Niger : la fintech i-FUTUR, en partenariat avec l’agence des Nations Unies UNCDF, déploie un système de paiement électronique',
        "Au Niger, la majeure partie de la population, dont 80% vit en zone rurale, n’est toujours pas bancarisée. Cependant, l’utilisation des produits et services financiers numériques, en voie d’être incorporée aux habitudes du pays est soutenue par la stratégie nationale de finance inclusive, qui prévoit des dispositions mettant la transformation numérique au cœur des actions.",
        200,
        [
          'assets/images/img5.pjg',
        ],
      ),
      Info(
        'assets/images/img6.jpg',
        'Éliminatoires CAN U23 MAROC 2023 : le Niger bat le Soudan 2-1 et se qualifie',
        "Le Mena du Niger des moins de 23 ans a joué son match retour au Soudan, ce mardi 28 mars 2023, et a battu l'équipe soudanaise sur le score de 2-1 et file directement aux phases finales de la coupe d'Afrique des Nations Total Energy Maroc 2023, une grande première pour le pays.",
        200,
        [
          'assets/images/img6.pjg',
        ],
      ),
    ];
  }

  map(Card Function(dynamic info) param0) {}
}
