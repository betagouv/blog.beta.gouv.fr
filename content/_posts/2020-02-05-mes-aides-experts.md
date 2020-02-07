---
layout: post
title: "Mes Aides dans les mains des experts"
date: 2020-02-05
authors:
  - thomas.guillet
categories: general
tags:
image: /img/posts/2020-02-06-mes-aides-experts.jpg
excerpt: >-
  Un simulateur, comme il y en a plusieurs au sein du collectif [beta.gouv.fr](https://beta.gouv.fr), peut être vu comme la partie émergée de l'iceberg du [moteur de règles sous-jacent](/dinsic/2020/01/22/coder-la-legislation-au-benefice-des-citoyens/). Voyons quelques fonctionnalités qui dépassent les objectifs initiaux de [mes-aides.gouv.fr](https://mes-aides.gouv.fr).
---

«&nbsp;Mes Aides un simulateur multi-prestations à destination des particuliers et des personnes qui les accompagnent » oui, mais pas que&nbsp;! Cette expression a été [savamment rédigée](/general/2017/07/21/comment-choisir-vocabulaire-proposition-valeur) depuis longtemps. Elle correspond effectivement au problème que nous souhaitons résoudre depuis le début&nbsp;: le non-recours aux prestations généré par le manque d'informations. Cela étant dit, le simulateur est apparu comme un outil bien utile pour les experts des prestations sociales. On vous raconte ici pourquoi.

La page de résultats de Mes Aides est l'une des pages les plus riches du simulateur. Une petite section, cachée, est à destination des experts des prestations sociales.

![Capture d'écran de la partie de la page de résultats avec un bouton à cliquer pour les partenaires](/img/posts/2020-02-06-mes-aides-experts/Capture_bouton.png)

Trois liens se cachent derrière ce bouton. 

![Capture d'écran de la partie affichée après le clic. Avec trois liens, «&nbsp;Indiquez les résultats attendus pour cette situation&nbsp;», «&nbsp;Accédez à l'outil d'analyse des résultats de cette simulation&nbsp;» et «&nbsp;Analysez l'évolution des aides en fonction des ressources&nbsp;»](/img/posts/2020-02-06-mes-aides-experts/Capture_liens.png)

Nous allons voir plus en détails à quoi servent ces trois fonctionnalités.


### Médiation 🤨

> Indiquez les résultats attendus pour cette situation

Lors des travaux de fiabilisation du moteur de calculs, nous avons échangé avec des experts des différents prestations. Au début, ces échanges se faisaient autour de fichiers Excel décrivant les situations à tester et les résultats attendus pour chacune de ces situations.

![Capture d'écran d'un fichier Excel avec des informations sur des cas-types testés sur le simulateur de la CAF et sur le simulateur Mes Aides](/img/posts/2020-02-06-mes-aides-experts/excel_dhup.png)

Avec l'amélioration continue faite sur le moteur de calculs, ces fichiers Excel sont devenus des outils de plus en plus frustrants lors de nos échanges. En effet, les données n'étaient pas assez explicites et nous obligeaient à faire trop d'hypothèses. Que signifie «&nbsp;base ressources&nbsp;» quand il peut s'agir de salaire, d'une pension de retraite ou encore autre chose&nbsp;? Il y avait trop d'implicite et trop d'endroits où les «&nbsp;évidences&nbsp;» n'étaient pas partagées.

Pour enlever le maximum d'ambiguïtés de ce genre, nous avons pensé que Mes Aides pouvait aussi être utilisé pour décrire les situations de tests c'est à dire les situations pour lesquelles les experts métiers connaissent les résultats attendus.


Nous avons donc créé un formulaire qui permet aux personnes ayant une expertise dans les prestations sociales de nous aider à améliorer le simulateur. En voici une capture d'écran&nbsp;:

![Capture de l'écran de saisie à destination des experts leur permettant d'indiquer les valeurs attendus et le contexte légal](/img/posts/2020-02-06-mes-aides-experts/Capture_resultats_attendus.png)

Avec les informations saisies dans ce formulaire, nous pouvons avoir des conversations avec beaucoup moins d'implicite. Dans ce cas là, le simulateur apparaît comme formidable outil de médiation pour faire le lien entre des experts métiers et l'équipe qui améliore le moteur de règles.


### Exploration 🧐

> Accédez à l'outil d'analyse des résultats de cette simulation

Il arrive (oui, oui, ça arrive encore 😅) que les résultats obtenus avec Mes Aides ne soient pas ceux attendus. Dans certains cas, l'origine de l'écart est identifiée et nous essayons d'[informer les usagers directement](/general/2020/01/01/mes-aides-amelioration-continue/#vous-ou-votre-conjoint-%C3%AAtes-propri%C3%A9taire-de-votre-logement-principal-ou-%C3%AAtes-log%C3%A9s-gratuitement) mais dans d'autres cas, l'origine est plus difficile à trouver.

Le passage des informations saisies par les usagers aux montants des prestations est complexe et il est nécessaire de décortiquer les étapes de calculs et de regarder les résultats intermédiaires.

C'est avec cet objectif que nous avons créé [un outil](https://betagouv.github.io/openfisca-tracer) pour analyser ces résultats intermédiaires.

![Capture d'écran de l'outil de visualisation des résultats intermédiaires](/img/posts/2020-02-06-mes-aides-experts/tracer.png)

Sur la capture d'écran suivante, on peut voir les détails de calcul de la prime d'activité (`ppa`) pour le mois de janvier 2020 (`2020-01`).

En rentrant un peu plus dans ces détails-là, on peut échanger avec les experts métiers sur des points très précis de la législation et confronter la modélisation faite dans le moteur de calculs à leur expertise.

![Capture d'écran des calculs intermédiaires pour la bonification dans la prime d'activité](/img/posts/2020-02-06-mes-aides-experts/tracer_ppa_bonification.png)

Par exemple, ici, on peut voir les données qui permettent de calculer [la bonification de la prime d'activité](https://www.service-public.fr/particuliers/vosdroits/F2882). Pour les personnes curieuses, les valeurs affichées sont à mettre en perspective des formules de calcul de la [`ppa_bonification`](https://github.com/openfisca/openfisca-france/blob/master/openfisca_france/model/prestations/minima_sociaux/ppa.py#L328-L346) et de [`ppa_revenu_activite_individu`](https://github.com/openfisca/openfisca-france/blob/master/openfisca_france/model/prestations/minima_sociaux/ppa.py#L143-L178).

Dans ce cas-là, le simulateur apparaît comme formidable outil permettant l'exploration des experts métiers dans l'application des règles de la législation.


### Prospective 🤯

> Analysez l'évolution des aides en fonction des ressources

Enfin, l'été dernier nous avons essayé quelque chose de plus radical. En effet, derrière la mise à disposition de l'information, il y a la volonté d'aider les personnes à faire _des choix de vie informés_. «&nbsp;Qu'est ce qui se passe si je reprends une activité&nbsp;?&nbsp;» fait partie des questions auxquelles nous souhaitons apporter une réponse. «&nbsp;À quoi ressemble le filet de sécurité sociale&nbsp;?&nbsp;» en est une autre.

Avec ces questions en tête nous avons créé un outil représentant l'évolution des prestations sociales et du revenu disponible en fonction du salaire net. En faisant évoluer le salaire net de 0 à 3&nbsp;000&nbsp;€ par mois il est possible de voir comment les différentes contributions au revenu disponibles évoluent à leur tour.

Pour donner une idée du résultat, nous avons pris des situations spécifiques et mis à disposition les [résultats associés](https://betagouv.github.io/mes-aides-changent/).

À titre d'exemple, le graphique suivant correspond à une personne célibataire en situation de handicap et en location à Aubervilliers.

[![Capture d'écran du graphique toutes les prestations sociales et en particulier l'AAH, la prime d'activité et le salaire net qui ont des dynamiques très différentes](/img/posts/2020-02-06-mes-aides-experts/prospective_rua.png)](https://betagouv.github.io/mes-aides-changent/graphique/?source=/mes-aides-changent/static/celibataire_handicap.json)

Le troisième lien sur la page de résultats de Mes Aides permet ainsi d'accéder à un tel graphique pour la situation spécifiée dans le simulateur Mes Aides.

Pour conclure, les simulateurs et les moteurs de règles sous-jacents sont de formidables outils. Avec cet article, nous avons partagé certaines des pistes que nous avons explorées pour rendre plus accessible la complexité des systèmes socio-fiscaux. 

Vous souhaitez faire une simulation et voir à quoi cela ressemble sur un cas concret&nbsp;? C'est par [ici](https://mes-aides.gouv.fr/foyer/demandeur)&nbsp;!

Vous souhaitez travailler avec nous sur de tels sujets&nbsp;? Contactez-nous à [bonjour@mes-aides.gouv.fr](mailto:bonjour@mes-aides.gouv.fr).
