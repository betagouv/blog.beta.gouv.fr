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
  l’État et des territoires. En son sein ont été développées plusieurs solutions
  dont le point commun est de coder les règles de la législation en code
  informatique, pour les restituer aux usagers dans un format compréhensible.
  L’objet de cet article est d’en partager quelques enseignements.
---
Nous sommes gouvernés par des règles ! Elles prennent la forme d’une loi, d’un décret, d’une circulaire interne à une administration, voire des usages. Leur rôle est de nous informer, de façon ouverte, transparente, et complète — toutes les situations possibles doivent y être considérées — de nos droits et de nos obligations : l’impôt que nous devons payer, les aides sociales auxquelles nous avons droit, le montant de cotisations patronales et sociales dont s’acquitte un salarié, etc.

Nul n'est censé ignorer la loi. Et pourtant les règles qui font la législation sont rarement faciles à comprendre, encore moins à mettre en place. Les juristes ou agents de l’administration qui les écrivent visent davantage la précision et l’exhaustivité que leur appropriation par le grand public.

Se fonder sur ces règles pour créer des services publics numériques à destination des usagers et des entrepreneurs relève d’un véritable parcours du combattant. Qui plus est, l’évolution et la production de nouvelles règles rendent ces services difficiles à maintenir à jour, voire rapidement obsolètes.

Conséquence directe : le non-recours au droit, ou à de nombreuses aides qui ne sont pas connues ou mobilisées au moment opportun.

beta.gouv.fr est le réseau des incubateurs des services publics numériques de l’État et des territoires. En son sein ont été développées plusieurs solutions dont le point commun est de coder les règles de la législation en code informatique, pour les restituer aux usagers dans un format compréhensible. L’objet de cet article est d’en partager quelques.

## Un enjeu de souveraineté numérique

Les règles de la législation, lorsqu’elles sont écrites sous forme de code informatique, peuvent devenir accessibles aux usagers par le truchement de simulateurs, de « moteurs de règles », de l’échange de données… Ce qui permet à l’État, aux collectivités, et aux entrepreneurs, de construire plus facilement des services de meilleure qualité à destination des citoyens.

L’[OCDE considère](https://trends.oecd-opsi.org/embracing-innovation-in-government-global-trends-2019.pdf) l’écriture des règles de la législation en code informatique comme l’une des innovations les plus importantes en ce qui concerne la modernisation de l’action publique. Des pays comme le [Danemark](https://en.digst.dk/policy-and-strategy/digital-ready-legislation/), la [Nouvelle-Zélande](https://serviceinnovationlab.github.io/assets/Exploring_Machine_Consumable_Code_With_ACC.pdf) et l’[Australie](https://www.digital.nsw.gov.au/digital-transformation/policy-lab/rules-code), parmi d’autres, s’y investissent très fortement. La France elle-même a été en pointe sur le sujet, avec le développement d’[OpenFisca](https://fr.openfisca.org/), logiciel open source, contributif et réutilisable librement et gratuitement, qui permet d’écrire les règles de la législation d’un [pays](https://github.com/openfisca/openfisca-france) ou d’une [ville](https://github.com/openfisca/openfisca-paris) en code informatique.

## Coder la législation : pour quel bénéfice ?

**Pour les usagers**, il s’agit de rendre l’information réellement disponible au moment opportun et sans délai. Aujourd’hui, entre le moment où un dispositif est créé, par exemple une nouvelle aide à la formation professionnelle dans une région, et le moment où l’information est connue, il peut se passer plusieurs semaines, voire des mois. Conséquence : de nombreuses personnes continueront d’en ignorer l’existence. Lorsque l’équipe du site [Clara](https://clara.pole-emploi.fr/) « codifie » les aides sociales pour mettre à disposition un simulateur en ligne, elle permet à de nombreux demandeurs d’emploi de se découvrir éligibles à une aide et de la mobiliser pour retrouver plus vite un emploi ou se former.

**Pour les entrepreneurs**, il s’agit de diminuer le temps et les ressources consacrés à la mise en conformité réglementaire, et de disposer de façon opportune les informations critiques nécessaires pour prendre les bonnes décisions au bon moment. Grâce à [MonEntreprise](https://mon-entreprise.fr/), par exemple, les entreprises peuvent calculer, en quelques secondes, le coût réel d’une embauche, et comprendre facilement comment le calcul de ce coût se décompose. Ainsi, elles en finissent avec l’idée reçue « si j’embauche quelqu’un au SMIC, ça me coûte en réalité le double », augmentant leur prédisposition à l’embauche, ce qui représente *in fine* une externalité positive pour la société.

**Pour le législateur et tous les producteurs des règles**, il s’agit d’en améliorer le processus d’élaboration. Aujourd’hui, la manière de créer des règles n’est pas pensée dans une optique de déploiement des politiques publiques. Rendre compréhensibles les règles de la législation par des ordinateurs permet, comme le fait [LexImpact](https://leximpact.an.fr/) avec l’impôt sur le revenu, d’estimer leur impact en amont de leur officialisation. Ainsi, de lorsque qu’elles sont écrites en code informatique avant de leur mise en application, les services publics numériques qui en dépendent réduisent à zéro le délai de leur prise en compte, au profit direct des citoyens. C’en est le cas du [PNDS](https://www.mesdroitssociaux.gouv.fr/).

## Quels sont les écueils à éviter ?

Coder les règles de la législation n’est pas un acte neutre, et les équipes en charge de développer des services publics numériques chez beta.gouv.fr doivent rester vigilantes :

**Appliquer une logique informatique à toute la législation.** Certains aspects de la législation décrivent des règles prescriptives, qu’on peut décliner facilement en code informatique : impôts, prestations sociales, retraite… et d’autres, notamment celles qui requièrent du jugement humain, dont la déclinaison en code informatique est loin d’être évidente : décisions de justice… Le parti pris de beta.gouv.fr est de restituer les informations aux usagers en publiant l’intégralité des codes sources en open source, les rendant consultables, questionnables et améliorables par tous les citoyens.

**Faillir à la promesse d’exhaustivité, oublier une règle.** En centralisant toutes les règles de la législation, ainsi que leurs conditions d’applicabilité, pour les rendre accessibles aux usagers, on crée une promesse qu’il faut tenir. L’usager devient à raison plus exigeant. Il n’existe pas de recette miracle, sinon d’être transparent avec les utilisateurs sur le périmètre des informations disponibles et de les écouter. Le site [MesAides](https://mes-aides.gouv.fr/) permet ainsi aux utilisateurs qui auraient un doute sur la justesse d’une simulation de contacter l’équipe ou de signaler une potentielle erreur.

**« Désintermédier » systématiquement.** La diffusion des règles au travers d’interfaces grand public encourage un accès direct des usagers à leurs droits, ce qui peut conduire à négliger le rôle précieux de certains médiateurs, avoir des effets inattendus sur le consentement à l’impôt, etc. À cet égard, les services créés par beta.gouv.fr sont des outils numériques en commun, développés en collaboration avec les agents et les usagers, à l’instar des milliers de conseillers Pôle emploi qui utilisent chaque semaine [Clara](https://clara.pole-emploi.fr/) en rendez-vous pour informer les personnes qu’ils accompagnent.

## Le futur, c’est maintenant !

Les règles de la législation écrites en code informatique constituent une véritable infrastructure numérique commune, qui facilite déjà l’accès transparent à l’information au bénéfice des usagers, des entrepreneurs et du législateur.

Si nous créons déjà des services publics numériques comme [MesAides](https://mes-aides.gouv.fr/) et [LexImpact](https://leximpact.an.fr/), à l’appui de cette infrastructure, qu’est-ce qui nous empêche de mettre à disposition des administrations, des collectivités et des entrepreneurs, une[API garantie par l’État](https://api.legifrance.gouv.fr), pour qu’elles puissent construire encore plus des services à destination des usagers ?

Si les producteurs des règles peuvent déjà traduire en code informatique des réformes pour en mesurer l’impact, qu’est-ce qui les empêche d’écrire les nouvelles règles de la législation en code informatique même avant de les écrire en français, pour les vérifier en collaboration avec des juristes, des développeurs, des designers, des usagers… ?

Si l’État peut déjà savoir qu’une personne est éligible à une aide sociale, qu’est-ce qui l’empêche de la lui proposer proactivement, voire de la déclencher, sans attendre à ce que cette personne ait l’idée de la demander ? Ce qui marche pour l’impôt (retenue à la source) pourrait fonctionner par symétrie pour les aides sociales.

À la condition de gagner la confiance des usagers dans les algorithmes, et de rendre opposables les effets de leur application, c’est-à-dire de pouvoir toujours faire appel à un humain en cas de désaccord, nous avons dans nos mains l’arme probablement la plus redoutable jamais conçue pour lutter contre le non-recours.

Dans cette série, beta.gouv.fr vous propose de vous partager les enseignements sur quatre de ses services publics numériques, développés sur le modèle des Startups d’État et des Territoires, et qui illustrent l’usage des règles de la législation écrites en code informatique : [OpenFisca](https://fr.openfisca.org), [Clara](https://clara.pole-emploi.fr/), [publi.codes](https://publi.codes/), et [La Bonne Formation](https://labonneformation.pole-emploi.fr/).

Bonne lecture !
