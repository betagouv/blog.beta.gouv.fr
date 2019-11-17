---
layout: post
title: "L'amélioration continue au service de l'augmentation de l'impact sur Mes Aides"
date: 2020-01-01
authors:
  - thomas.guillet
categories: general
tags:
excerpt: >-
  Florilèges d'améliorations plus ou moins attendues qui nous ont permis d'avoir plus d'impact sans augmenter la taille de l'équipe !
---

Au sein du collectif [beta.gouv.fr](https://beta.gouv.fr), nous déclinons l'[obsession du service client](https://medium.com/@djo/obsession-service-client-captain-train-cb0b91467fd9) pour améliorer la qualité des services publics numériques que nous développons.

## Pourquoi est-ce important ?

Nous souhaitons créer des services publics numériques performants avec de petites équipes autonomes, nous devons donc être très attentifs à la qualité de ce que nous produisons.

C'est particulièrement important en phase de croissance commes l'illustrent très bien les graphiques suivants repris de la [présentation](https://medium.com/@djo/obsession-service-client-captain-train-cb0b91467fd9) de [Jonathan Lefèvre](https://medium.com/@djo)&nbsp;:
![Sans amélioration, le nombre de problèmes augmente avec le nombre d'utilisateurs](/img/posts/2020-01-13-mes-aides-amelioration-continue/ticket-base.png)
![Avec de l'amélioration continue, le nombre de problèmes est stable, la qualité du produit permet d'avoir](/img/posts/2020-01-13-mes-aides-amelioration-continue/ticket-amelioration.png)


## Comment faire en pratique ?

Pour commencer, il faut être à l'écoute des usagers en ouvrant les canaux de communication.

Ensuite, il faut expérimenter des améliorations du service qui rendent autonomes les usagers et leur apportent les réponses aux questions qu'ils se posent.

### Prendre en compte le cas général 🙃

> Je suis bloqué sur la première page, je ne suis dans aucune des situations indiquées.

En [mars 2017](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=day&date=2017-03-31&segment=&category=Dashboard_Dashboard&subcategory=1), lors d'une campagne de communication nous avons reçu de nombreux messages similaires à celui-là.

En effet, de nombreux utilisateurs croyaient que le simulateur ne traitait que les situations particulières listées en première page. Voilà ce qui était affiché&nbsp;:
![Version initiale sans indication](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-avant.png)

Pour remédier à ce problème nous avons fait [première tentative](https://github.com/betagouv/mes-aides-ui/pull/489) qui ressemblait à cela&nbsp;:
![Version avec le texte « Dans aucune de ces situations ? Validez directement ! »](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-1eret.png)

Au fil des évolutions nous sommes arrivé à la [version suivante](https://mes-aides.gouv.fr/foyer/demandeur)&nbsp;:
![Version actuelle avec une case à cocher « Je ne suis dans aucune de ces situations »](/img/posts/2020-01-13-mes-aides-amelioration-continue/demandeur-maintenant.png)

Cette amélioration n'a pas eu d'effet sur les statistiques d'usage mais les personnes ne semblent plus bloquées et nous ne recevons plus d'email sur ce sujet.


### Une page dédié pour le trafic provenant d'ameli.fr

> Constat : 33% du trafic de Mes Aides provient d'[ameli.fr](https://www.ameli.fr/), le site de l'Assurance Maladie et ce trafic génère de nombreuses sollicitations par email.

Les personnes qui arrivent sur le simulateur ont un problème précis en tête. La plupart d'entre elles ne cherche pas à faire une simulation.

Pour leur apporter une information pertinente sans surcharger la page d'accueil, nous avons mis en place un redirection automatique vers [une page dédiée](https://mes-aides.gouv.fr/ameli). Nous y avons compilé les réponses aux problèmes les plus fréquents.

Avec cette modification, nous évitons aux usagers de se lancer dans une simulation qui ne va pas leur apporter les informations qu'ils recherchent et nous diminuons le nombre de courriels à traiter par l'équipe !


### Une page de résultats enrichie pour ce trafic

> Constat : Malgré cette page intermédiaire, des sollicitations continuent d'arriver au sujet de l'éligibilité aux dispositifs de l'assurance maladie (CMU-C, ACS et plus récemment la CSS).

Une partie du flux provenant d'[ameli.fr](https://www.ameli.fr/) cherche bien à savoir si elle est éligible à des prestations sociales et en particulier à la Couverture maladie universelle complémentaire (CMU-C), l'Aide au paiement d’une complémentaire santé (ACS) et la Complémentaire santé solidaire (CSS).

Pour ces personnes provenant d'ameli.fr, nous avons ajouté une section à la page de résultats qui permet d'expliciter la non-éligiblité à ces trois prestations en fonction des résultats du simulateur. En effet, le parti pris sur Mes Aides était de limiter l'information affichée et de n'afficher que les prestations auxquelles les personnes semblent éligibles.

Lorsqu'elles y sont éligibles, les personnes ont accès à la page de résultats habituelle&nbsp;:
![Extrait de la page de résultats avec les aides](/img/posts/2020-01-13-mes-aides-amelioration-continue/css-eligible.png)

Lorsque ces personnes ne sont pas éligibles, une section supplémentaire est ajoutée à la page de résultats pour les informer de leur non-éligibilité&nbsp;:
![Version avec le texte « Dans aucune de ces situations ? Validez directement ! »](/img/posts/2020-01-13-mes-aides-amelioration-continue/css-non-eligible.png)

Avec cette modification, les personnes ne nous contactent plus pour partager leur incompréhension et pour connaître leur éligiblité à ces dispositifs.


### «&nbsp;Vous (ou votre conjoint) êtes propriétaire de votre logement principal ou êtes logés gratuitement&nbsp;?&nbsp;»

> Constat : Cette question, extraite du [simulateur de la prime d'activité sur caf.fr](http://www.caf.fr/allocataires/mes-services-en-ligne/estimer-vos-droits/simulation-prime-d-activite), est à l'origine de nombreux signalements d'écart entre les deux simulateurs.

Pourquoi tant de signalements&nbsp;? Car il faut répondre «&nbsp;Non&nbsp;» lorsque vous êtes toujours en train de rembourser le crédit pour votre logement principal ou si vous êtes hébergé en participant aux frais du logement. C'est d'ailleurs ce qui est précisé dans une infobulle près de la question mais celle-ci n'est pas utilisée en pratique&nbsp;:
![Capture d'écran de l'infobulle du simulateur de la CAF](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-popover.png)


Pour limiter le nombre de signalements sur ce sujet, nous avons ajouté sur la page de résultats un lien supplémentaire avec la mention «&nbsp;montant inattendu&nbsp;?&nbsp;» lorsque la prime d'activité était affichée&nbsp;:
![Extrait de la page de résultats avec la mention «&nbsp;Montant inattendu&nbsp;?&nbsp;»](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-ecart.png)

Ce lien permet d'accéder à une page dédiée où nous explicitons la différence d'interprétation qui est probablement à l'origine de l'écart&nbsp;:
![Capture d'écran de la page dédiée avec les explications](/img/posts/2020-01-13-mes-aides-amelioration-continue/ppa-proprietaire-message.png)

En novembre 2019, environ 600 personnes ont cliqué sur ce lien. Informées, ces personnes n'ont pas eu à nous contacter.


### Aider à aller plus loins dans les démarches

> Constat : Pas assez de personnes qui arrivent sur la page de résultats se lancent dans les démarches

Nous avons pu faire ce constat après avoir [mis en place un indicateur](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=day&date=today&segment=&category=Goals_Goals&subcategory=3) pour savoir si les visites débouchaient sur le lancement de démarches. C'est à dire si les personnes cliquaient sur l'un des liens qui les amenaient sur les pages dédiées des sites des organismes sociaux.

Lorsque ce constat a été fait, la page de résultats ressemblait à ça&nbsp;:
<video width="100%" height="630" controls>
<source src="/img/posts/2020-01-13-mes-aides-amelioration-continue/avant.m4v">
</video>

À cette époque, nous avons demandé à notre expert de l'expérience usager préféré (UX) de nous aider à modifier la page de résultats pour augmenter le nombre de personnes qui commencent leurs démarches.

La [proposition suivante](https://github.com/jeremiecook/beta.gouv.fr-ux/tree/master/mes-aides) nous a été faite&nbsp;:
![Wireframe de la page de résultats](https://user-images.githubusercontent.com/1410356/49874493-edfc2980-fe1e-11e8-9401-31c6687168ed.png)

À partir de cette suggestion, [nous avons implémenté](https://github.com/betagouv/mes-aides-ui/pull/990) la version suivante&nbsp;:
<video width="100%" height="690" controls>
<source src="/img/posts/2020-01-13-mes-aides-amelioration-continue/apres.m4v">
</video>

Pour nous assurer que cette modification améliorer effectivement la situation, nous avons fait de l'[A/B testing](https://fr.wikipedia.org/wiki/Test_A/B). Les deux versions étaient en production en parallèle. C'est à dire que la moitié du trafic continuait à voir l'ancienne version et l'autre moitié voyait la nouvelle version. Étant donné que le site [mes-aides.gouv.fr](https://mes-aides.gouv.fr/) a un trafic important, nous avons rapidement pu avoir des écarts statistiques significatifs.

Voici le résultat sur la période [du 18 au 24 janvier 2019](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=range&date=2019-01-18,2019-01-24&segment=&category=Goals_Goals&subcategory=3)&nbsp;:

Version | Visites | Conversions | Taux de conversion
-- | -- | -- | --
Nouvelle version (A[lternative]) | 20&nbsp;765 | 6&nbsp;605 | 31,81%
Ancienne version (B[ase]) | 20&nbsp;824 | 4&nbsp;321 | 20,75%

cf. les [statistiques publiques](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=month&date=2019-01-31&segment=&category=Goals_Goals&subcategory=3) (Objectif 'Démarche commencée' puis «&nbsp;Objectifs par Attribut de l'utilisateur&nbsp;» puis «&nbsp;Variables personnalisées&nbsp;» et enfin regarde pour «&nbsp;Nom de la variable personnalisée&nbsp;»&nbsp;: resultat).

Avec cette nouvelle version, le nombre de personnes qui commencent au moins une démarches a augmenté de plus de 50%&nbsp;!


### Plus d'options pour lancer les démarches

> Vous affichez le lien pour les démarches en ligne c'est bien mais, s'il vous plaît, conservez les liens vers les alternatives papier quand elles existent&nbsp;!

Cette remarque nous a été faits lors d'une rencontre avec des travailleurs sociaux dans l'Ardèche en début d'année 2019. L'assistante sociale qui nous a interpellés accompagne des personnes âgées&nbsp;; démunies lorsqu'elles doivent faire leurs démarches en ligne elles sont tout à fait autonomes quand il s'agit de remplir un formulaire papier.

Nous avons affiché les alternatives sur la page de résultats pour que les personnes puissent choisir celle qu'elle préfèrent. Nous avons pu constaté que lorsque le téléservice et le formulaire sont affichés près de 20% des personnes choississent le formulaire (Comme pour la Complémentaire santé solidaire en [novembre 2019](https://stats.data.gouv.fr/index.php?module=CoreHome&action=index&idSite=9&period=day&date=today#?idSite=9&period=month&date=2019-11-16&segment=&category=General_Actions&subcategory=Events_Events)).

Avec le même objectif, nous avons ajoutons des liens vers des lieux d'accueil physique où les personnes peuvent se rendre pour être accompagner et faire leurs démarches. Pour l'allocation de solidarité aux personnes âgées, environ 10% des personnes choississent d'afficher la liste de ces lieux. Pour un dispositif comme la Complémentaire santé solidaire, seulement 4% mais pour un dispositif comme l'allocation de solidarité aux personnes âgées cela représente près de 10%. Cela s'explique par le fait que le public est plus éloigné du numérique et préfère aller à la rencontre des agents proche de chez eux.

Pour vous faire une meilleure idée, voilà à quoi ça ressemble&nbsp;:
![Extrait de la page de résultats avec les liens pour aller plus loin dans les démarches](/img/posts/2020-01-13-mes-aides-amelioration-continue/ctas.png)


## Quel bilan ?

Le numérique est un outil que nous devons utiliser pour rendre service aux humains. Les services que nous produisons sont maléables ; facilement modifiables pour s'adapter aux personnes qui les utilisent.


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
