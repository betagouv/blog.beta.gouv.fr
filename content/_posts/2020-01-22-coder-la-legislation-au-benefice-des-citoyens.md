---
layout: post
title: "Coder la législation au bénéfice des citoyens !"
date: '2020-01-22'
authors:
  - mauko.quiroga
  - arnaud.denoix
categories: dinsic
image: /img/posts/coder-la-legislation-au-benefice-des-citoyens.jpg
excerpt: >-
  beta.gouv.fr est le réseau des incubateurs des services publics numériques de
  l’État et des territoires. En son sein ont été développés plusieurs produits
  dont le point commun est de coder les règles de la législation en code
  informatique, pour les restituer aux usagers dans un format compréhensible.
  L’objet de cet article est d’en partager quelques enseignements.
---
Nous sommes gouvernés par des règles. Celles-ci prennent la forme d’une loi, d’un décret, d’une circulaire interne à une administration, voire d'usages. Leur rôle est de nous informer de manière complète — tous les cas de figure doivent être considérés — de nos droits et de nos obligations : l’impôt que nous devons payer, les aides sociales auxquelles nous avons droit, le montant de cotisations sociales dont s’acquitte un salarié, etc.

Or les règles qui font la législation sont rarement faciles à comprendre, encore moins à mettre en place. Les juristes ou agents de l’administration qui les écrivent visent davantage la précision et l’exhaustivité que leur appropriation par le grand public.

Conséquence directe : le non-recours au droit, ou à de nombreuses aides qui ne sont pas connues des citoyens. Ansi que la profusion de services concurrents qui « réinventent la roue » pour implémenter ces règles et dont certains — sites privés — prélèvent même une commission pour aider les usagers à bénéficier d'une aide.

## Un enjeu de souveraineté numérique

Les règles de la législation, lorsqu’elles sont écrites sous forme de code informatique, deviennent accessibles aux usagers par le truchement de simulateurs, de « moteurs de règles » et d'échanges de données, ce qui permet à l’État, aux collectivités, et aux entreprises, de construire à leur tour plus facilement des services de meilleure qualité à destination des citoyens.

L’[OCDE considère](https://trends.oecd-opsi.org/embracing-innovation-in-government-global-trends-2019.pdf) l’écriture des règles de la législation en code informatique comme l’une des innovations les plus importantes en ce qui concerne la modernisation de l’action publique. Le [Danemark](https://en.digst.dk/policy-and-strategy/digital-ready-legislation/), la [Nouvelle-Zélande](https://serviceinnovationlab.github.io/assets/Exploring_Machine_Consumable_Code_With_ACC.pdf) et l’[Australie](https://www.digital.nsw.gov.au/digital-transformation/policy-lab/rules-code), parmi d’autres pays, s’y investissent fortement. La France elle-même a été en pointe sur le sujet, avec le développement d’[OpenFisca](https://fr.openfisca.org/), logiciel open source, contributif et réutilisable librement et gratuitement, qui permet d’écrire les règles de la législation d’un [pays](https://github.com/openfisca/openfisca-france) ou d’une [ville](https://github.com/openfisca/openfisca-paris) en code informatique.

## Coder la législation : pour quels bénéfices ?

**Pour les usagers**, il s’agit de rendre l’information réellement disponible au moment opportun et sans délai. Aujourd’hui, entre le moment où un dispositif est créé, par exemple une aide à la formation professionnelle en région, et le moment où l’information est connue du public visé, il peut se passer plusieurs semaines, voire des mois, pendant lesquels le dispositif est à impact nul. Même après son officialisation, l'information peut rester confidentielle, inscrite sur un mémo ou une affiche dans les couloirs d'une administration. C'est pourquoi l’équipe du site [Clara](https://clara.pole-emploi.fr/) a « codifié » les aides sociales dans un simulateur en ligne, permettant à des centaines de milliers de demandeurs d’emploi de se découvrir éligibles à une aide et de la mobiliser pour retrouver plus vite un emploi ou se former. Dans un autre domaine, le [Code du travail numérique](https://code.travail.gouv.fr/) permet aux salariés d'interroger le Code du travail dans un langage naturel pour connaître leurs droits. 

**Pour les entreprises**, il s’agit de diminuer le temps et les ressources consacrés à la mise en conformité réglementaire, et de disposer des informations critiques pour prendre les bonnes décisions au bon moment. Grâce à [MonEntreprise](https://mon-entreprise.fr/), par exemple, les entreprises peuvent calculer, en quelques secondes, le coût réel d’une embauche, et comprendre facilement le calcul de ce coût, quitte à contrer des idées reçues comme « si j’embauche quelqu’un au SMIC, ça me coûte en réalité le double ».

**Pour le législateur et tous les producteurs des règles**, écrire les règles de la législation en code informatique peut être utile en amont de leur officialisation, pour en évaluer les conséquences pratiques. [LexImpact](https://beta.gouv.fr/startups/leximpact.html) est ainsi utilisé par des députés pour mesurer l’impact des réformes relatives à l’impôt sur le revenu, sur des foyers fiscaux types et sur les recettes de l’État. 

## Quels sont les écueils à éviter ?

Coder les règles de la législation n’est pas un acte neutre, et les équipes en charge de développer des services publics numériques chez beta.gouv.fr ont identifié les points de vigilance suivants :

**Appliquer une logique informatique à toute la législation.** Certains aspects de la législation décrivent des règles prescriptives, qu’on peut décliner facilement en code informatique selon une logique faite de critères d'éligibilité ("si j'ai moins de 20 ans, que j'habite dans une agglomération et que je suis sans emploi depuis xx mois, alors je suis éligible à xx"). C'est le cas des impôts, prestations sociales, retraite. Pour d’autres règles, non chiffrables ou davantage dépendantes de l'interprétation comme les décisions de justice, la déclinaison en code informatique est moins évidente. Le parti pris de beta.gouv.fr est de se concentrer sur les premières, et dans tous les cas de restituer les informations aux usagers en publiant l’intégralité des codes sources en open source, pour qu'ils soient consultables, questionnables et améliorables par tous les usagers.

**Faillir à la promesse d’exhaustivité, oublier une règle.** En centralisant toutes les règles de la législation, ainsi que leurs conditions d’applicabilité pour les rendre accessibles aux usagers, on crée une promesse qu’il faut tenir. Dit autrement, quand l'information n'était pas disponible, personne ne se plaignait de sa justesse ! Avec les simulateurs en ligne, l’usager devient à raison plus exigeant. La mise à jour et l'exhaustivité des règles est un point d'attention nouveau et permanent des équipes qui créent ces services. Il n’existe pas de recette miracle, sinon d’être transparent avec les utilisateurs sur le périmètre des informations disponibles et de les écouter sur les erreurs éventuelles. Le site [MesAides](https://mes-aides.gouv.fr/) permet ainsi aux utilisateurs qui auraient un doute sur la justesse d’une simulation de contacter l’équipe ou de signaler une potentielle erreur qui servira à améliorer le simulateur en continu. 

**« Désintermédier » systématiquement.** La diffusion des règles au travers d’interfaces grand public encourage un accès direct des usagers à leurs droits, ce qui pourrait conduire à négliger le rôle précieux de certains médiateurs. En réalité, on observe avec le développement de ces outils que les agents et médiateurs ont davantage de temps pour résoudre les problèmes complexes des usagers, sans réponse aujourd'hui, tandis que ceux-ci se renseignent eux-même sur les cas de base. En outre, les services créés par beta.gouv.fr sont développés en collaboration avec les agents publics, usagers, et autres médiateurs, qui en sont les premiers utilisateurs, à l’instar des milliers de conseillers Pôle emploi qui utilisent chaque semaine [La Bonne Formation](https://labonneformation.pole-emploi.fr/) en rendez-vous pour informer les personnes qu’ils accompagnent.

## Et après ?

Les règles de la législation écrites en code informatique et branchées sur des services publics facilitent déjà l’accès à l’information pour les usagers.

Qu’est-ce qui nous empêche de mettre à disposition des administrations, des collectivités et des entreprises, une API garantie par l’État  telle que l'[API Légifrance](https://api.legifrance.gouv.fr), pour qu’elles puissent construire encore plus des services à destination des usagers ?

Enfin, si l’État peut déjà savoir qu’une personne est éligible à une aide sociale, pourrait-il la déclencher automatiquement, sans attendre que cette personne ait l’idée de la demander ? Ce qui marche pour l’impôt (retenue à la source) pourrait fonctionner par symétrie pour les aides sociales, à la condition de gagner la confiance des usagers dans les algorithmes, et de rendre opposables les effets de leur application, c’est-à-dire de pouvoir toujours faire appel à un humain en cas de désaccord.

À suivre : beta.gouv.fr vous propose de partager dans les prochains jours les enseignements de quatre services publics numériques, développés sur le modèle des Startups d’État et des Territoires, et qui illustrent l’usage des règles de la législation écrites en code informatique : [OpenFisca](https://fr.openfisca.org), [Clara](https://clara.pole-emploi.fr/), [publi.codes](https://publi.codes/), et [La Bonne Formation](https://labonneformation.pole-emploi.fr/).

Bonne lecture !
