---
layout: post
title: "Coder le moins possible"
date: '2020-01-23'
authors:
  - david.bruant
categories: dinsic
#image: /img/posts/coder-la-legislation-au-benefice-des-citoyens.jpg
excerpt: >-
#   beta.gouv.fr est le réseau des incubateurs des services publics numériques de
#   l’État et des territoires. En son sein ont été développés plusieurs produits
#   dont le point commun est de coder les règles de la législation en code
#   informatique, pour les restituer aux usagers dans un format compréhensible.
#   L’objet de cet article est d’en partager quelques enseignements.
---

Quand Sabine Safi et moi-même arrivons sur le projet Lotocar, le projet Lotocar a déjà effectué 50 trajets entre des conducteur.rice.s volontair.e.s et passager.ère.s que ça a bien dépanné. La priorité, afin de prouver que le service a une utilité dans le Lot, est d'augmenter le nombre de trajets effectués. Ce nombre de trajet va nous servir de mesure d'impact. Et les trajets ont lieu quand 3 conditions sont remplies : 
- un.e passager.ère fait une demande
- il existe un.e conducteur.rice pertinent.e
- une correspondance est trouvée et une rencontre est organisée

La tech ne peut pas vraiment être une solution pour les deux premiers problèmes. Il s'agit seulement de faire connaître le service.
Par contre, le 3ème point peut potentiellement être résolu par un outil numérique.

Le projet Lotocar est un projet de Service Publique. Là où la grosse majorité des services de covoiturage laissent les personnes se débrouiller avec une plateforme numérique, Lotocar propose un numéro de téléphone disponible à toutes les personnes qui souhaiteraient faire un trajet en covoiturage, mais pas à l'aise par le numérique.
La personne qui répond au téléphone s'appelle Nathalie. 

Afin de savoir quel outil numérique serait utile, une de nos premières actions avec Sabine a été d'aller à Cahors et lister avec Nathalie tout ce qu'il se passe entre les moments où un.e passager.ère fait une demande et un.e conducteur.rice pertinent.e s'incrit et le moment où un trajet a effectivement lieu. Et dans cette liste trouver les endroits qui sont à la fois les plus chiants pour Nathalie et pour lesquels un outil numérique serait pertinent et facile à produire rapidement.


## L'irritant dans l'irritant

Le premier point douloureux qui remonte, c'est de trouver des correspondances géographiques. Les conducteur.rice.s et s'inscrivent via un formulaire Google Form et les données de chaque réponse sont stockées dans un Google Spreadsheet. Quand une personne appelle et a besoin de faire un trajet Pradines => Gourdon un mardi à 9h30, Nathalie doit chercher dans une liste de 300 conducteur.rice.s (en juillet 2019. En janvier 2020, on est plutôt à 600) si des conducteur.rice.s font le trajet Pradines => Gourdon.
Et évidemment, une correspondance exacte sur les deux villes est très rare. Alors, elle ouvre Google Maps pour voir le trajet et les communes proches de Pradines et de Gourdon, voir s'il n'y aurait pas des personnes qui font presque le même trajet, genre Cahors => Gourdon. Et replonger dans le Google Spreadsheet pour trouver des correspondances.
Dans le pire des cas, ce travail pouvait prendre 3 heures et prenait régulièrement 20-30 minutes par demande de trajet.


## Une solution locale

La première solution qui vient, c'est de créer une interface web où Nathalie pourra saisir la demande trajet et l'outil retourne la liste de conducteur.rice.s triée par temps additionel de détour. Les conducteur.rice.s qui partent de la même ville et arrivent à la même ville ont un détour de zéro minutes, mais une personne qui part ou arrive un peu ailleurs aura peut-être un détour à faire de 2 ou 6 ou 14 minutes.

Le plus gros du code de cette solution est du code JavaScript côté client. Il va lire directement la liste des conducteur.rice.s dans le Google Spreadsheet via un serveur qui discute avec l'API utile.


## Solutions écartées

### Forker Mobicoop

[Mobicoop](https://www.mobicoop.fr/) [distribue le code de sa plateforme](https://gitlab.com/mobicoop/mobicoop-platform) sous une licence qui permet la réutilisabilité.

Toutefois, il avait l'air de s'agir d'un gros outil dont il était difficile de savoir à l'avance si l'investissement qui consiste à le maîtriser vaudrait le coup.


### Tout internaliser

Une autre approche aurait pu consister à tout internaliser, c'est-à-dire créer une base de données, y transférer les données... et recréer toutes les APIs et interfaces utilisateur.rice.s qui couvrent les usages existants de Google Forms et Google Spreadsheet.

Google Forms et Google Spreadsheet ont les avantages, pour des personnes qui ne codent pas comme Sabine et Nathalie, de permettre de modifier les données pour les corriger, mais aussi de modifier librement les questions des formulaires, changer les choix multiples, rajouter des questions, etc. En terme technique, Google Forms et Google Spreadsheet permettent à des personnes non-développeur.euse d'avoir un accès direct aux données et de modifier librement le *[modèle de données](https://fr.wikipedia.org/wiki/Mod%C3%A8le_de_donn%C3%A9es)*. Si ceci peut être reproduit dans une base de données que l'on gère soi-même, c'est rarement le cas par défaut et celà demande généralement beaucoup de travail.
Et nous préférions dépenser ce travail sur des outils qui rajoutent de la valeur plutôt que recréer ce que d'autres outils résolvent déjà pour nous "[gratuitement](https://www.laquadrature.net/2016/08/17/si-vous-etes-le-produit/)".

Un autre avantage à ne pas internaliser est que ça permet de ne rien remettre en question du fonctionnement des inscriptions. Aussi, le temps que l'outil fasse ses preuves, Nathalie peut continuer à utiliser les outils et process qu'elle connait et maitrise.
Aussi, si nous constations que Nathalie continuait à chercher des correspondances directement dans le Google Spreadsheet, il s'agirait d'un signal précieux que l'outil que nous avons créé ne résolvait pas autant un problème qu'on l'imaginait. Ou peut-être pas un problème suffisamment important pour changer d'outil.
Au final, l'outil est sensé être là pour lui rendre la vie plus simple. Si elle ne l'utilise pas, il s'agit peut-être d'une erreur d'écoute de notre part.


## 




