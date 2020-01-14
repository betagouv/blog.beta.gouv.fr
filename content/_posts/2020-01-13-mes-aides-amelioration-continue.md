---
layout: post
title: "L'amélioration continue au service de l'augmentation de l'impact sur Mes Aides"
date: 2020-01-13
authors:
  - thomas.guillet
categories: general
tags:
excerpt: >-
  Au sein du collectif [beta.gouv.fr](https://beta.gouv.fr), nous déclinons l'[obsession du service client](https://medium.com/@djo/obsession-service-client-captain-train-cb0b91467fd9) pour améliorer la qualité des services publics numériques que nous développons.
---

Dans cet article, nous allons présenter des améliorations plus ou moins attendues qui nous ont permis d'accroître notre impact sans faire grossir l'équipe.


## Pourquoi est-ce important&nbsp;?

Nous souhaitons créer des services publics numériques performants avec de petites équipes autonomes, nous devons donc être très attentifs à la qualité de ce que nous produisons.

C'est particulièrement important en phase de croissance comme l'illustrent très bien le graphique suivant repris de la [présentation](https://medium.com/@djo/obsession-service-client-captain-train-cb0b91467fd9) de [Jonathan Lefèvre](https://jonathanlefevre.com)&nbsp;:
![Sans amélioration, le nombre de problèmes augmente avec le nombre d'utilisateurs](/img/posts/2020-01-13-mes-aides-amelioration-continue/ticket-base.png)
![Avec de l'amélioration continue, le nombre de problèmes est stable, la qualité du produit permet d'avoir](/img/posts/2020-01-13-mes-aides-amelioration-continue/ticket-amelioration.png)

Dans le contexte de Captain Train, les _tickets_ correspondent aux problèmes signalés par les usagers. L'amélioration continue permet de faire diminuer la proportion de problèmes par rapport au nombre d'usagers.

## Comment faisons-nous en pratique&nbsp;?

Il est très important pour nous d'être à l'écoute des usagers et d'ouvrir au maximum les canaux de communication. Encore aujourd'hui, nous collectons les retours principalement par courriel même si nous avons aussi créé une page Facebook et un compte Twitter.

Nous profitons aussi de l'organisation en petite équipe autonome qui permet d'expérimenter des améliorations du service qui rendent les usagers autonomes à leur tour et leur apportent les réponses aux questions qu'ils se posent.

Voici quelques exemples d'améliorations que nous avons faites au cours des années précédentes.

### Prendre en compte le cas général

> «&nbsp;Je suis bloqué sur la première page, je ne suis dans aucune des situations indiquées.&nbsp;»

En [mars 2017](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=day&date=2017-03-31&segment=&category=Dashboard_Dashboard&subcategory=1), lors d'une campagne de communication nous avons reçu de nombreux messages similaires à celui-là.

En effet, de nombreux utilisateurs croyaient que le simulateur _ne traitait que_ les situations particulières listées en première page. Voilà ce qui était affiché&nbsp;:
![Version initiale sans indication](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-avant.png)

Pour remédier à ce problème nous avons fait une [première tentative](https://github.com/betagouv/mes-aides-ui/pull/489) qui ressemblait à cela&nbsp;:
![Version avec le texte « Dans aucune de ces situations&nbsp;? Validez directement ! »](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-1eret.png)

Au fil des évolutions, nous sommes arrivés à la [version suivante](https://mes-aides.gouv.fr/foyer/demandeur)&nbsp;:
![Version actuelle avec une case à cocher « Je ne suis dans aucune de ces situations »](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-maintenant.png)

Cette amélioration n'a pas eu d'effet sur les statistiques d'usage mais les personnes ne semblent plus bloquées et nous ne recevons plus de courriel sur ce sujet. Nous pouvons consacrer notre temps et notre énergie sur d'autres aspects du simulateur.


### Une page dédiée pour le trafic provenant d'ameli.fr

> Constat : 33% du trafic de Mes Aides provient d'[ameli.fr](https://www.ameli.fr/), le site de l'Assurance Maladie et ce trafic génère de nombreuses sollicitations par courriel.

Les personnes qui arrivent sur le simulateur ont un problème précis en tête. À vrai dire, la plupart d'entre elles ne cherchent pas à faire une simulation et c'est pour cette raison qu'elles nous contactent.

Pour leur apporter une information pertinente sans surcharger la page d'accueil, nous avons mis en place une redirection automatique vers [une page dédiée](https://mes-aides.gouv.fr/ameli). Nous y avons compilé les réponses aux problèmes les plus fréquents.

Avec cette modification, nous évitons aux usagers de se lancer dans une simulation qui ne va pas leur apporter les informations qu'ils recherchent et nous diminuons le nombre de courriels à traiter par l'équipe !


### Une page de résultats enrichie pour ce trafic particulier

> Constat : Malgré cette page intermédiaire, des sollicitations continuent d'arriver au sujet de l'éligibilité aux dispositifs de l'assurance maladie (CMU-C, ACS et plus récemment la CSS).

Une partie des personnes provenant d'[ameli.fr](https://www.ameli.fr/) cherche bien à savoir si elle est éligible à des prestations sociales et en particulier à la Couverture Maladie Universelle Complémentaire (CMU-C), l'Aide au paiement d’une Complémentaire Santé (ACS) et la Complémentaire Santé Solidaire (CSS).

Pour ces personnes provenant d'ameli.fr, nous avons ajouté une section à la page de résultats qui permet d'expliciter la non-éligibilité à ces trois prestations en fonction des résultats du simulateur. En effet, le parti pris sur Mes Aides était de limiter l'information affichée et de n'afficher que les prestations auxquelles les personnes semblent éligibles.

Lorsqu'elles y sont éligibles, les personnes ont accès à la page de résultats habituelle&nbsp;:
![Extrait de la page de résultats avec les aides](/img/posts/2020-01-13-mes-aides-amelioration-continue/css-eligible.png)

Lorsque ces personnes ne sont pas éligibles, une section supplémentaire est ajoutée à la page de résultats pour les informer de leur non-éligibilité&nbsp;:
![Version avec le texte « Dans aucune de ces situations&nbsp;? Validez directement ! »](/img/posts/2020-01-13-mes-aides-amelioration-continue/css-non-eligible.png)

Avec cette modification, les personnes ne nous contactent plus pour partager leur incompréhension et pour connaître leur éligibilité à ces dispositifs.


### «&nbsp;Vous (ou votre conjoint) êtes propriétaire de votre logement principal ou êtes logés gratuitement&nbsp;?&nbsp;»

> Constat : Cette question, extraite du [simulateur de la prime d'activité sur caf.fr](http://www.caf.fr/allocataires/mes-services-en-ligne/estimer-vos-droits/simulation-prime-d-activite), est à l'origine de nombreux signalements d'écart entre les deux simulateurs.

Pourquoi tant de signalements&nbsp;? Car il faut répondre «&nbsp;Non&nbsp;» lorsque l'on est toujours en train de rembourser le crédit pour son logement principal ou si l'on est hébergé en participant aux frais du logement. C'est d'ailleurs ce qui est précisé dans une infobulle près de la question mais celle-ci n'est pas utilisée en pratique&nbsp;:
![Capture d'écran de l'infobulle du simulateur de la CAF](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-popover.png)


Pour limiter le nombre de signalements sur ce sujet, nous avons ajouté sur la page de résultats un lien supplémentaire avec la mention «&nbsp;Montant inattendu&nbsp;?&nbsp;» lorsque la prime d'activité était affichée&nbsp;:
![Extrait de la page de résultats avec la mention «&nbsp;Montant inattendu&nbsp;?&nbsp;»](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-ecart.png)
Ce lien supplémentaire apparaît uniquement pour les personnes concernées par ce problème d'interprétation, les autres usages ne sont pas surchargés par cette information.


En cliquant dessus, on accède à une page où la différence d'interprétations est expliquée&nbsp;:
![Capture d'écran de la page dédiée avec les explications](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-message.png)

En novembre 2019, environ 600 personnes ont cliqué sur ce lien. Informées, ces personnes n'ont pas eu à nous contacter.


### Aider à aller plus loin dans les démarches

> Constat : Trop peu de personnes se lancent dans les démarches à partir des liens mis à leur disposition en fin de simulation

Nous avons pu faire ce constat après avoir [mis en place un indicateur](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=day&date=today&segment=&category=Goals_Goals&subcategory=3) pour savoir si les visites débouchaient effectivement sur des démarches, autrement dit, si les personnes cliquent sur l'un des liens qui les amènent sur les pages dédiées des sites des organismes sociaux.

Lorsque ce constat a été fait, la page de résultats ressemblait à ça&nbsp;:
<video width="100%" height="630" controls>
<source src="/img/posts/2020-01-13-mes-aides-amelioration-continue/avant.m4v">
</video>

À cette époque, nous avons demandé à notre expert de l'expérience usager préféré (UX) de nous aider à modifier la page de résultats pour augmenter le nombre de personnes qui commencent leurs démarches.

À partir de [cette suggestion](https://github.com/jeremiecook/beta.gouv.fr-ux/tree/master/mes-aides), [nous avons implémenté](https://github.com/betagouv/mes-aides-ui/pull/990) la version suivante&nbsp;:
<video width="100%" height="690" controls>
<source src="/img/posts/2020-01-13-mes-aides-amelioration-continue/apres.m4v">
</video>

Pour garantir l'amélioration de la situation avec cette modification, nous avons fait des [tests A/B](https://fr.wikipedia.org/wiki/Test_A/B). Les deux versions étaient en production en parallèle. Une première moitié des usagers sélectionnée aléatoirement continuait à voir l’ancienne version et l’autre moitié voyait la nouvelle. Étant donné que le site [mes-aides.gouv.fr](https://mes-aides.gouv.fr/) a un trafic important, nous avons rapidement pu avoir des écarts statistiques significatifs.

Voici le résultat sur la période [du 18 au 24 janvier 2019](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=range&date=2019-01-18,2019-01-24&segment=&category=Goals_Goals&subcategory=3)&nbsp;:

Version | Visites | Conversions | Taux de conversion
-- | -- | -- | --
Nouvelle version (A[lternative]) | 20&nbsp;765 | 6&nbsp;605 | 31,81%
Ancienne version (B[ase]) | 20&nbsp;824 | 4&nbsp;321 | 20,75%

Cf. les [statistiques publiques](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=month&date=2019-01-31&segment=&category=Goals_Goals&subcategory=3) (Objectif 'Démarche commencée' puis «&nbsp;Objectifs par Attribut de l'utilisateur&nbsp;» puis «&nbsp;Variables personnalisées&nbsp;» et enfin regarde pour «&nbsp;Nom de la variable personnalisée&nbsp;»&nbsp;: «&nbsp;resultat&nbsp;»&nbsp;).

Avec cette nouvelle version, le nombre de personnes qui commencent au moins une démarche a augmenté de plus de 50%&nbsp;! Nous avons pu faire cette mise à jour importante sereinement, confiants de l'augmentation de notre impact.


### Plus d'options pour lancer les démarches

> «&nbsp;Vous affichez le lien vers les démarches en ligne c'est bien mais, s'il vous plaît, conservez les liens vers les formulaires à imprimer quand ils existent encore&nbsp;!&nbsp;»

Cette remarque nous a été faite lors d'une rencontre avec des travailleurs sociaux en Ardèche en début d'année 2019. L'assistante sociale qui nous a interpellés accompagne des personnes âgées&nbsp;; démunies lorsqu'elles doivent faire leurs démarches en ligne, elles sont tout à fait autonomes quand il s'agit de remplir un formulaire.

Nous avons donc affiché le lien vers le formulaire sur la page de résultats pour que les personnes puissent choisir l'alternative qu'elles préfèrent. Nous n'avons pas oublié d'enrichir les informations collectées pour savoir dans quelle mesure cette modification était utile aux usagers. Ainsi, nous avons pu constater que lorsque le téléservice et le formulaire sont affichés, près de 20% des personnes choisissent le formulaire (Comme pour la Complémentaire Santé Solidaire en [novembre 2019](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=month&date=2019-11-16&segment=&category=General_Actions&subcategory=Events_Events)).

Concrètement, voilà à quoi ça ressemble&nbsp;:
![Extrait de la page de résultats avec les liens pour aller plus loin dans les démarches](/img/posts/2020-01-13-mes-aides-amelioration-continue/ctas.png)

Avec le même objectif, vous pouvez voir que nous avons aussi ajouté des liens vers des lieux d'accueil physique où les personnes peuvent se rendre pour être accompagnées et faire leurs démarches.

À titre d'exemples, pour un dispositif comme la Complémentaire Santé Solidaire, seulement 4% des personnes utilisent ces liens-là mais pour un dispositif comme l'Allocation de Solidarité aux Personnes Âgées cela représente près de 10%. Cela s'explique par le fait que le public est plus éloigné du numérique et préfère aller à la rencontre des agents proches de chez eux.


## En résumé

Le numérique est un outil que nous devons utiliser comme un levier pour améliorer les services rendus aux personnes. Ne voyons pas les solutions numériques comme des objets physiques figés et à construire une fois pour toutes, mais profitons de leur plasticité pour les adapter en même temps que les usages évoluent.

<style type="text/css">
table {
  border-collapse: collapse;
}

table,th, td {
  border: 1px solid black;
}

th {
  padding: 0 1em;
}

td {
  text-align: right;
}

td:first-child {
  text-align: left;
}
</style>
