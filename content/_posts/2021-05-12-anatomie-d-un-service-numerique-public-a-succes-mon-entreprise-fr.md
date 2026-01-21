---
layout: post
title: "Recette d’un service public numérique à succès : le cas de Mon-entreprise.fr"
date: 2021-05-20
authors:
  - penelope.liot
categories: general
tags: Mon-entreprise.fr
image: /img/posts/logo-me.svg
excerpt: >
  Après avoir passé le cap des 6 millions de visiteurs, mon-entreprise.fr
  devient officiellement un service à impact national ! Profitons de cette
  occasion pour revenir sur l'histoire de ce projet, ses leçons et ses facteurs
  clefs de succès.
---
### Mais qu'est-ce que c'est Mon-entreprise.fr ?

[Mon-entreprise.fr](http://mon-entreprise.fr/) est un service à destination de tous les créateurs, afin de les aider à faire les meilleurs choix dans le développement de leur activité. Sa botte secrète réside dans ses simulateurs, qui permettent aux travailleurs de calculer leurs revenus réels en fonction de leurs situations. 

*Le désormais célèbre simulateur d'embauche dans sa version actuelle* 

<iframe id="simulateurEmbauche" src="https://mon-entreprise.fr/iframes/simulateur-embauche?iframe" style="border: medium none; width: 100%; display: block; height: 614px; overflow: auto;" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true" scrolling="auto"></iframe>

Derrière ce service : 

* 3 millions de simulations réalisées,
* 19 simulateurs, intégrant la quasi-totalité des statuts du secteur privé,
* 295 intégrations sur des sites web publics et privés,
* Un organisme : l'Urssaf Caisse nationale (ex Acoss), qui pilote le réseau des Urssaf.

Comment en est-on arrivé là ?

### Genèse du projet

Le projet trouve sa toute première origine fin 2014 au sein du secrétariat général pour la modernisation de l'action publique qui réfléchit à la création d'un calculateur de fiches de paie. C'est un projet particulièrement ambitieux sur lequel beaucoup se sont déjà cassé les dents (avec un coût loin d'être négligeable). 

La mission beta.gouv s'en saisit et, conformément à son approche agile, décide de commencer petit avec un estimateur de coût d'embauche. 

La première version est un produit minimum viable construit de la façon la moins coûteuse possible : un formulaire HTML à 4 champs (salaire brut, effectif...), qui utilise l'API [OpenFisca](https://fr.openfisca.org/) pour lancer et récupérer les calculs en JSON, et un tableur maintenu par la petite équipe pour lister les lignes de la fiche de paie manquantes (rouge), celles pas encore implémentées (orange) et celles intégrées et correctes (vert).

*Première version de l'estimateur du coût d'embauche*
![](https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/imagespadincubateurnet/uploads/upload_b4dc50eaccb74d81810a99ff756b27eb.png)

Avec une version sommaire et pas particulièrement esthétique, ce premier rendu permet de tester et de valider l'intérêt de ce calculateur. L'avantage pour l'utilisateur est net : c'est son besoin à lui qui est au centre, à savoir connaître le coût global d'une embauche, et le détail de qui récupère quoi et où reste secondaire. 

Les utilisateurs répondent immédiatement présents : cap sur une nouvelle version plus aboutie ! 

Fiabilisation du modèle de calcul, ajout d'autres saisies, possibilité d'inverser le calcul entre net et brut... tel un homard, le calculateur doit changer de carapace pour grandir. Le moteur de calcul et l'interface sont entièrement ré-écrits. 

*Deuxième version de l'estimateur du coût d'embauche*
![](https://cloud.githubusercontent.com/assets/1177762/24154949/c91a1e3c-0e52-11e7-9227-eaa2df210004.gif)

### Rencontre et croissance avec l'Urssaf

En parallèle, l'Acoss - qui pilote les réseaux Urssaf - cherche à encourager les entreprises du Royaume-Uni à s'installer et embaucher en France à la suite du Brexit. Comment les aider à se projeter et naviguer dans les subtilités françaises ? 

C'est là que la rencontre entre le futur intrapreneur Bruno et l'équipe de beta.gouv se fait. En moins de deux semaines, la collaboration mène à la création du site [mycompanyinfrance.com](https://mycompanyinfrance.fr/), qui sort en mai 2019. Au programme : une aide simplifiée au choix de statut d'entreprise et le fameux estimateur de coût d'embauche, le tout dans la langue de Shakespeare. 

Très rapidement, il apparaît qu'un tel site pourrait être très utile ... au niveau national ! Le site français sort donc quelques mois après sa version anglaise. L'ACOSS propose alors de récupérer le projet et le porter en son sein, en conservant l'équipe beta.gouv. 

La collaboration est féconde : dès fin 2019, l'équipe diversifie son offre en permettant progressivement à chaque public de calculer facilement les cotisations sociales auxquelles il est soumis. On passe d'un estimateur initial à près de 20 simulateurs poussés et vérifiés. 

L'équipe peut combiner : 

* le savoir-faire de l'Urssaf qui vérifie les données, impulse de nouvelles fonctionnalités et est un gage de confiance, 
* la méthodologie de beta.gouv d'amélioration en continu du produit en se basant sur les retours utilisateurs.

Un tel attelage permet également une capacité d'exécution rapide. Alors que le pays se confine brutalement en mars 2020, Mon-entreprise.fr sort dans la foulée un simulateur de chômage partiel fiable pour les 10 millions de personnes concernées. 

Dès qu'une nouvelle mesure d'aide est prise, celle-ci est intégrée dans le simulateur d'embauche pour que les utilisateurs puissent en profiter, et ajoutée dans un [simulateur spécifique](https://mon-entreprise.fr/simulateurs/aides-embauche/) pour savoir à quelle aide on peut se qualifier plus rapidement. 

### Un succès qui profite au plus grand nombre dans une optique d'intérêt général

#### Une transparence accrue sur l'impact et les coûts

Comme tous les projets initiés par beta.gouv, Mon-entreprise.fr a une [page de statistiques ](https://mon-entreprise.fr/stats)mise à jour en temps réel qui montre les performances du site et les demandes des utilisateurs. 

Mon-entreprise.fr possède aussi une [page Budget ](https://mon-entreprise.fr/budget)qui détaille les postes de dépenses attribué au projet. 

Tous les travaux effectués sont documentés mensuellement sur une [page dédiée aux nouveautés.](https://mon-entreprise.fr/nouveautés) 

#### Un accès aux utilisateurs là où ils se trouvent

Le site internet n'est que la partie immergée de l'iceberg. Chaque simulateur est disponible sous la forme d'un module web intégrable directement sur une page web. 

Ainsi, la majeure partie du trafic provient des presque 300 sites qui intègrent un simulateur directement dans leur parcours d'utilisation : sites institutionnels (Urssaf, Pôle Emploi, service-public.fr, etc), mais aussi sites privés comme ceux de recrutement.

L'idée est de fournir un service utilisable par tous pour apparaître aux endroits les plus pertinents pour l'utilisateur.

[Rendez-vous ici pour intégrer un simulateur en quelques lignes de code. ](https://mon-entreprise.fr/int%C3%A9gration/iframe?module=simulateur-embauche)

#### Derrière les simulateurs, un moteur de calcul d'algorithmes publics disponibles à tous

Dans le cadre du développement des simulateurs de Mon-entreprise.fr, l'équipe a créé [publicodes](https://publi.codes), un langage pour modéliser toutes les règles derrière les algorithmes d'utilité publique. La législation sociale et fiscale est ainsi "écrite" de façon standardisée, ce qui permet de générer les simulateurs. 

La capitalisation des règles implémentées progressivement et l'amélioration continue du moteur de calcul permettent de construire des simulateurs de plus en plus rapidement.  

Surtout, elle permet à l'usager d'explorer le détail des calculs effectués afin de mieux comprendre le résultat d'une simulation.

Enfin, n'importe qui peut réutiliser les règles de mon-entreprise pour [créer ses propres outils](https://mon-entreprise.fr/int%C3%A9gration/biblioth%C3%A8que-de-calcul) ou encore écrire sa propre base de règles pour avancer sur d'autres sujets (comme par exemple  [un calculateur d'empreinte carbone](https://nosgestesclimat.fr/)).

[Rendez-vous ici pour découvrir le langage Publicodes. ](https://publi.codes/)

#### Les bienfaits de l'Open Source

Tout le code développé est en open source, ce qui permet à tous de faire ce qu'il souhaite avec.

Du côté de Mon-entreprise.fr, c'est aussi la possibilité d'avoir une aide précieuse de la communauté dans l'amélioration de ses propres services. L'équipe a par exemple été aidée à la formalisation du langage de Publicodes par un doctorant à l'INRIA passionné par ces sujets ! 

C'est aussi en suggérant une amélioration au code que l'équipe a pu rencontrer et recruter un de ses développeurs actuels, Maxime.

### Et ce n'est que le début !

Laboratoire d'expérimentation pour l'Urssaf, Mon-entreprise.fr continue sa route pour faciliter la vie de tous les entrepreneurs. 

[Inscrivez-vous à la newsletter pour suivre la suite des aventures. 
](https://b713d5c4.sibforms.com/serve/MUIEAORDk2igDY6unkg7QYRtPYv8wpNPQvETvuuUF91ZPlndtiKGA2Rh7yhHOtR74Rmp82dQ6nLLq3MTCdrH8Od0D4Agzo4Vs1OAKc3f9vEKK2AKF8VnAeUumK6_z4U875kAcIrPjyAPu1J9lK7sAa7YuiTfg31xxYPlicNBOKSP6dOhjF_SqvW-0_RPmgkXcOmDyA3T2z2rdnNB)
