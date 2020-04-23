---
layout: post
title: "Coder le moins possible"
date: '2020-01-23'
authors:
  - david.bruant
categories: dinsic
#image: /img/posts/coder-la-legislation-au-benefice-des-citoyens.jpg
excerpt: >-
    Sur Lotocar, le travail technique a laissé sa place à 
    d'autres travaux et resté à une place discrète
    Ça a eu beaucoup d'avantages techniques, pour l'équipe et pour
    les personnes utilisatrices
---

[Lotocar](https://beta.gouv.fr/startups/lotocar.html) est un service de covoiturage solidataire dans le Département du Lot porté par BetaGouv.

Quand Sabine Safi et moi-même arrivons sur le projet Lotocar, 50 trajets ont déjà été effectués entre des conductrices et des conducteurs volontaires et passagères et passagers à qui ça a rendu service. La priorité, afin que le service ait une utilité dans le Lot, est d'augmenter le nombre de trajets effectués. Ce nombre de trajets nous sert de mesure d'impact. Et les trajets ont lieu quand 3 conditions sont remplies :
- un passager ou une passagère fait une demande
- il existe un conducteur pertinent ou une conductrice pertinente
- une correspondance est trouvée et une rencontre est organisée

La tech ne peut pas vraiment être une solution pour les deux premiers problèmes, qui ne dépendent que de la diffusion du service. Par contre, le 3e point peut potentiellement être résolu par un outil numérique.

**Notre interrogation à ce moment-là : faut-il vraiment coder ? Ou bien continuer avec l’ensemble d’outils qui nous a permis de réaliser 50 trajets ? Ou encore, se tourner vers une « grosse » solution qui fait déjà tout ce dont on a besoin - et bien plus ?**

## Coder ? Et si oui, coder quoi, pourquoi ?

Lotocar est un service public. Contrairement à la plupart des services de covoiturage privés, Lotocar propose, en plus d’un formulaire en ligne, une ligne téléphonique pour les personnes qui ne sont pas à l’aise avec le numérique. La personne qui répond au téléphone s’appelle Nathalie Berhault, et dans un premier temps, en l’absence d’un outil numérique, c’est aussi elle qui rapproche manuellement les demandes de trajets de la base de conducteur⋅rice⋅s inscrit⋅e⋅s.

Avant notre arrivée à tous les deux, des travaux avaient été menés pour définir l’application à créer, des maquettes d’interface etc. Il s’agissait globalement de coder une application relativement classique de covoiturage avec gestion multi-agents. Cela représentait pas mal de travail de développement - facilement 80-100.000 €.

Mais au vu du budget restant - 120 000 € en tout, et des efforts de déploiement (qui constitue le plus gros de l’effort à fournir), nous ne pouvions pas consacrer ce budget au numérique. Nous avons choisi de réinterroger le besoin avant d’écrire une seule ligne de code.

Une de nos premières actions avec Sabine a donc été d'aller à Cahors et lister avec Nathalie tout ce qu'il se passe entre la réception d’une demande d’un⋅e passager⋅ère, l’inscription d’un⋅e conducteur⋅rice pertinent⋅e et le moment où un trajet a effectivement lieu. But de la manœuvre : trouver dans cette liste les endroits qui sont à la fois les plus pénibles pour Nathalie et pour lesquels un outil numérique serait pertinent et facile à produire rapidement.

**Notre interrogation à ce moment-là : quel est le problème, bien compris, délimité, et douloureux, auquel le numérique peut répondre avec un minimum d’effort ?**

## L’irritant dans l’irritant

Le premier point douloureux qui remonte tout de suite, c'est de trouver des correspondances géographiques. 

Les conducteur⋅rice⋅s et s’inscrivent via un formulaire Google Form, ces données sont stockées dans un Google Spreadsheet. Quand une personne appelle et a besoin de faire un trajet Pradines → Gourdon un mardi à 9 h 30, Nathalie cherche une correspondance dans ce tableur qui comprend 300 lignes. Et évidemment, une correspondance exacte sur les deux villes est très rare. Alors, elle ouvre Google Maps et cherche quel trajet plus long peut passer par Pradines et Gourdon, puis replonge dans le Google Spreadsheet pour trouver de nouvelles correspondances… En moyenne, cela lui prenait 20 à 30 minutes par demande de trajet, et jusqu’à 3 heures dans le pire des cas.


## Une solution locale

La première solution qui vient, c'est donc de créer une interface où Nathalie pourra saisir la demande trajet et récupérer la liste de conducteur⋅rice⋅s triée par temps de détour qu’impliquerait de prendre le⋅a passager⋅ère. 

À partir de cette liste, Nathalie peut contacter les conducteur⋅rice⋅s affichés avec un détour raisonnable. On a notre “petit problème bien douloureux” et la solution minimale qui y répond ; "y'a plus qu'à" implémenter.

**Notre interrogation à ce moment-là : jusqu’où aller avec notre outil ? Faire le strict minimum sur ce problème défini, ou aller un peu plus loin vers des choses “souhaitables” (souhaitées) ?**


## Implémentations écartées

### Forker Mobicoop

[Mobicoop](https://www.mobicoop.fr/) [distribue le code de sa plateforme](https://gitlab.com/mobicoop/mobicoop-platform) sous une licence qui permet la réutilisabilité.

Toutefois, il semblait s'agir d'un gros outil dont il était difficile de savoir à l'avance si l'investissement qui consiste à le maîtriser vaudrait vraiment le coup. D'autant plus que la taille de cet investissement elle-même était difficile à estimer.


### Tout internaliser

Une autre approche aurait pu consister à tout internaliser, c'est-à-dire créer une base de données, y transférer les données... et recréer toutes les APIs et interfaces utilisateur⋅rice⋅s qui couvrent les usages existants de Google Forms et Google Spreadsheet.

Google Forms et Google Spreadsheet ont les avantages, pour des personnes qui ne codent pas comme Sabine et Nathalie, de permettre de modifier les données pour les corriger, mais aussi de faire évoluer librement les formulaires ; en termes techniques, de modifier le *[modèle de données](https://fr.wikipedia.org/wiki/Mod%C3%A8le_de_donn%C3%A9es)*. Si ceci peut être reproduit dans une base de données que l'on gère soi-même, c'est rarement le cas par défaut et cela demande généralement beaucoup de travail. Nous avons choisi de dépenser ce travail sur des outils qui rajoutent de la valeur plutôt que recréer ce que d'autres outils résolvent déjà pour nous gratuitement ([même si nous restons conscients que cette gratuité a un coût](https://www.laquadrature.net/2016/08/17/si-vous-etes-le-produit/)).

Un autre avantage à ne pas internaliser est que ça permet de ne rien remettre en question du fonctionnement des inscriptions. Le temps que l'outil fasse ses preuves, Nathalie peut continuer à utiliser les outils et process qu'elle connait et maitrise. Si nous constations que Nathalie continuait à chercher des correspondances directement dans le Google Spreadsheet, il s'agirait d'un signal précieux que l'outil que nous avons créé ne résolvait pas autant un problème qu'on l'imaginait. Ou peut-être pas un problème suffisamment important pour changer d'outil. Au final, l'outil est sensé être là pour lui rendre la vie plus simple. Si elle ne l'utilise pas, il s'agit sûrement d'une erreur d'écoute de notre part.


## Solution choisie

La solution implémentée a le plus gros du code côté client en JavaScript. Ce code va lire directement la liste des conducteur⋅rice⋅s dans le Google Spreadsheet via un serveur "passe-plat" qui discute avec l'API pertinente et retourne les données.

Google Spreadsheet est la [source de vérité (anglais)](https://en.wikipedia.org/wiki/Single_source_of_truth) nourrie par les Google Forms. L'outil visualise ces données d'une manière qui permet de gagner du temps pour trouver les conducteur⋅rice⋅s pertinent⋅e⋅s.

Cette solution a été implémentée en une poignée de jours et a retiré la plus grosse épine du pied identifiée. Plus tard, pour permettre aux passagers de chercher eux-mêmes en ligne un⋅e conducteur⋅rice qui leur convient, nous avons publié cette même application à quelques modifications près - l’affaire de quelques jours supplémentaires. 

Nous avons choisi de ne pas implémenter d’autres fonctionnalités classiques d’une application de covoiturage (messagerie, paiement en ligne, création de compte utilisateur…), au delà de la mise en relation directe en ligne ou indirecte via Lotocar. Des solutions existantes ont déjà toutes les fonctionnalités imaginables, nous n’avons pas vocation à les concurrencer mais à créer un service minimal et fonctionnel de covoiturage solidaire, qui lui nous a manqué.

Moins de 30.000 euros ont été dépensés pour l’application de covoiturage déployée dans le Lot. Le reste du budget a pu être alloué au déploiement.



## Conclusion

Quand nous sommes arrivés dans le projet, la priorité était de trouver des conducteur⋅rice⋅s et des passager⋅ère⋅s. La création d'outils numériques était utile seulement au service de cet objectif. Et donc, une partie la plus petite possible du budget a été alloué à la création de ces outils afin que le reste du budget puisse être alloué à trouver des conducteur⋅rice⋅s et des passager⋅ère⋅s dont les trajets correspondent.

La philosophie appliquée était qu'aucune ligne de code n'est codée tant qu'on ne sait pas quel problème précis on est en train de résoudre.
Et on cherche à créer [le produit le plus simple (anglais)](https://en.wikipedia.org/wiki/Minimum_viable_product) qui résoud uniquement ce problème.
Et chaque [ligne de code](https://github.com/DavidBruant/lotocar) ajoutée ne l'est que pour aller dans cette direction.


## Épilogue

Cette approche a aussi eu un avantage inattendu. 
Un parent a eu un problème de santé et il devenait très plausible que je m'absente brusquement du projet. Cette approche minimale du code a rendu très facile pour Maël Thomas de rejoindre l'équipe, s'approprier et maitriser très rapidement l'exhaustivité de la base de code. Et quand je me suis effectivement absenté du jour au lendemain, il a pu prendre le relais sans problème.


## Reconnaissance

Merci à Christophe Robillard, Sabine Safi, Laurent Bossavit et David Larlet pour leurs relectures de brouillons de cet article
