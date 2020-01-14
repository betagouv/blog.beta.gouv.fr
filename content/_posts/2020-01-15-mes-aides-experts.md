---
layout: post
title: "Mes Aides dans les mains des experts"
date: 2020-01-15
authors:
  - thomas.guillet
categories: general
tags:
excerpt: >-
  Un simulateur, comme il y en a plusieurs au sein du collectif beta.gouv.fr, peut être vu comme la partie émergée de l'iceberg du moteur de règles sous-jacent. Voyons quelques fonctionnalités qui dépassent les objectifs initiaux.  
---

« Mes Aides un simulateur multi-prestations à destination des particuliers et des personnes qui les accompagnent » oui, mais pas que&nbsp;! Cette expression a été [savamment rédigée](/general/2017/07/21/comment-choisir-vocabulaire-proposition-valeur) depuis longtemps. Elle correspond effectivement au problème que nous souhaitons résoudre au départ&nbsp;: le non-recours aux prestations généré par le manque d'informations. Cela étant dit, le simulateur est apparu comme un outil bien utile pour les experts des prestations sociales. On vous raconte ici pourquoi.

La page de résultats de Mes Aides est l'une des pages les plus riches du simulateur. Une petite section, cachée, est à destination des experts des prestations sociales.

Capture bouton

Trois liens se cachent derrière ce bouton. 

Capture liens sous le bouton

Nous allons voir plus en détails à quoi servent ces trois fonctionnalités.

### Médiation

> Indiquez les résultats attendus pour cette situation

Lors des travaux de fiabilisation du moteur de calculs, nous avons échangé avec des experts des différents prestations. Au début, ces échanges se faisaient autour de fichiers Excel décrivant les situations à tester et les résultats attendus pour chacune de ces situations.

Capture fichier DHUP

Avec l'amélioration continue faite sur le moteur de calculs, ces fichiers Excel sont devenus des outils frustrants lors de nos échanges. En effet, les données n'étaient pas assez explicites et nous obligeaient à les interpréter et à faire des hypothèses. Que signifie « base ressources » quand il peut s'agir de salaire (net, brut et net après prélèvement à la source), de retraite ou encore autre chose&nbsp;?

Pour enlever le maximum d'ambiguïtés de ce genre, nous avons pensé que Mes Aides pouvait aussi être utilisé pour décrire les situations de tests, ie. les situations pour lesquelles les résultats sont connus.


Capture écran de saisie

Avec les informations saisies dans ce formulaire, nous pouvons avec des conversations qui contiennent une part d'implicite beaucoup plus petite qu'à partir d'un fichier Excel. Dans ce cas là, le simulateur apparaît comme formidable outil de médiation avec des utilisateurs informés.


### Exploration

> Accédez à l'outil d'analyse des résultats de cette simulation

Il arrive (encore) que les résultats obtenus avec Mes Aides ne soient pas ceux attendus. Dans certains cas, l'origine de l'écart est identifiée et nous essayons d'[informer les usagers directement](/general/2020/01/01/mes-aides-amelioration-continue/#vous-ou-votre-conjoint-%C3%AAtes-propri%C3%A9taire-de-votre-logement-principal-ou-%C3%AAtes-log%C3%A9s-gratuitement) mais dans d'autres cas, elle est plus difficile à trouver.

Le passage des informations saisies par les usagers aux montants des prestations est trop complexe et il est nécessaire de décortiquer les étapes de calculs et de regarder les résultats intermédiaires.

C'est avec cet objectif que nous avons créé [un outil](https://betagouv.github.io/openfisca-tracer) pour analyser ces résultats intermédiaires.

5e1dfe0ebf91222030fbdb3c

Capture outil d'analyse sans détail

Sur cette capture d'écran, on peut voir les détails de calcul de la prime d'activité (`ppa`) pour le mois de janvier 2020 (`2020-01`).

En rentrant un peu plus dans les détails, on peut échanger avec les experts métiers sur des points très précis de la législation et confronter la modélisation faite dans le moteur de calculs à leur expertise.

Capture outil d'analyse avec détails PPA

Par exemple, ici, on peut voir les données qui permettent de calculer la bonification de la prime d'activité.


### Prospective

> Analysez l'évolution des aides en fonction des ressources 




Capture graphique


Les moteurs de règles sont
