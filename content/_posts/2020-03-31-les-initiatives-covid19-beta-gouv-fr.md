---
layout: post
title: "11 initiatives covid19 accompagnées par beta.gouv.fr "
date: 2020-04-23T00:00:00.000Z
categories: dinsic
tags: ""
image: /img/posts/beta.jpg
excerpt: >-
Au coeur de la crise sanitaire du #Covid19, nous accompagnons en ce moment des équipes qui se sont mobilisées pour améliorer ou créer des produits à destination des citoyens, des entreprises, des associations ou encore les administrations pour faire face à certaines problématiques.


  Découvrez 11 d’entre elles !
---
## **1 - [Algorithme](https://github.com/Delegation-numerique-en-sante/covid19-algorithme-orientation/blob/master/pseudo-code.org) et [questionnaire](https://www.gouvernement.fr/info-coronavirus/orientation-medicale) d'orientation COVID-19**

Nous proposons notre appui pour aider à la publication de l'[algorithme d'orientation COVID-19](https://github.com/Delegation-numerique-en-sante/covid19-algorithme-orientation), ainsi qu'au déploiement du [questionnaire d'orientation officiel](https://www.gouvernement.fr/info-coronavirus/orientation-medicale).

#### Finalités de l'algorithme

* outiller les acteurs de la société civile qui contribuent à la mobilisation nationale dans le cadre de la crise sanitaire ;
* s'assurer que toutes les initiatives d'informations, d'orientations et de triage s'appuient sur le même algorithme ;
* normaliser le [format des données](https://github.com/Delegation-numerique-en-sante/covid19-algorithme-orientation-schema-donnees) pour outiller leurs collectes à des fins de recherche.

#### Finalités du questionnaire

* orienter les personnes qui en ont le plus besoin, en fonction de l’état de santé et des symptômes qu’elles déclarent, vers le bon comportement à adopter ;
* appuyer la recherche épidémiologique grâce à la collecte et à la publication en *open data* des données anonymisées sur le site [data.gouv.fr](https://data.gouv.fr).

#### Diffusion des codes sources

Au-delà des données, les codes sources sont eux aussi diffusés publiquement en *open source* :

* la partie « interface » du questionnaire est publiée [ici](https://github.com/etalab/covid19-orientation) ; 
* la partie « collecte des données » du questionnaire  est publiée [ici](https://github.com/betagouv/covid19-algorithme-orientation-api).

#### Collaboration interministérielle

Ces travaux sont le fruit d'une collaboration entre BetaGouv, Etalab, l'Institut Pasteur, la Délégation ministérielle du numérique en santé, l'Agence du numérique de la sécurité civile, et le Service d'information du Gouvernement.

![Questionnaire d'orientation COVID-19](/img/posts/questionnaire.png)


## **2 - [Solidarite-numerique.fr](http://solidarite-numerique.fr/)** / produit porté par [La MedNum ](https://lamednum.coop)et l'Agence Nationale de la Cohésion des Territoires

Le site permet le recensement des ressources de médiations et des médiateurs numériques volontaires pour participer à la mise en place d'un numéro de téléphone d'aide.

Nous avons mis à disposition une personne sur l'UX en transverse qui, en utilisant <https://betagouv.github.io/template.beta.gouv.fr/> à pu prototyper une page d'accueil rapidement exploitable. Nous nous sommes également inspirés de l'expérience usagers issue de l'expertise des équipes Aidants Connect et Administration+ (partage avec les UX de chaque équipe pour comprendre le comportement des usagers, appel à usagers beta-testeurs pour la nouvelle interface).

Nous avons également mobilisé un développeur qui était sur [api.gouv.fr](http://api.gouv.fr/) pour intégrer les travaux UX, mettre en place l'infra selon nos bonnes pratiques et accompagner les développeurs MedNum qui se sont chargés du back-office de traitement des appels et de reccueil des ressources. 

![Page d'accueil du site solidarite-numerique](/img/posts/slack-imgs.com.png)

## **3 - [Réserve civique](https://covid19.reserve-civique.gouv.fr)**

Un produit que nous suivons depuis longtemps, qui se préparait à une nouvelle jeunesse en retrouvant un sponsors à la DJEPVA autours des suites du SNU -[https://static.data.gouv.fr/​resources/conventions-de-​partenariat/20200217-121903/​convention-delegation-startup.​pdf](https://static.data.gouv.fr/resources/conventions-de-partenariat/20200217-121903/convention-delegation-startup.pdf) et qui se retrouve au centre d'un dispositif hors-norme.

En quelques jours, des volontaires et chargés de déploiements issus du programme d'incubation des territoires, d'aidantsconnect, des transports, etc. se sont mobilisés et ont contribué en apportant une expertise : mise en place d'outils de gestion du support, kit de déploiement, animation de réseau, communication...

Nos partenaires historiques se sont également mobilisés contre le covid-19 - [https://www.journaldunet.​com/web-tech/cloud/1490053-​jeveuxaider-gouv-fr-pare-pour-​accueillir-600-benevoles-par-​seconde/](https://www.journaldunet.com/web-tech/cloud/1490053-jeveuxaider-gouv-fr-pare-pour-accueillir-600-benevoles-par-seconde/)

Aujourd'hui c'est plus de 250 000 volontaires inscrits sur la réserve civique pour remplir les milliers de demande de missions en provenance de plus de 3000 associations sur jeveuxaider.gouv.fr 

![](/img/posts/euwqvvlxgaebqnb.jpg)

## **4 - [Aidants Connect](https://aidantsconnect.beta.gouv.fr)**

Depuis le début du confinement, les aidants professionnels qui accompagnent les usagers éloignés du numérique rencontrent des obstacles pour assurer la continuité de service : 

* fermetures des lieux d'accueil, points de contact habituels avec les usagers ;
* difficultés d'accès à une information précise quant à tous les changements administratifs qu'a provoqués l'état d'urgence administratif ;
* L'adaptation de procédures, généralement vues en personne, à être réalisées à distance, avec des équipements peu adaptés (utilisation de materiel personnel par les aidants ...). 

Pour accompagner les aidants dans cette période difficile, Aidants Connect et Administration+ ont échangé avec les structures d'accompagnement pour réaliser un inventaire des besoins terrain et trouver les moyens les plus adaptés pour y répondre : 

* Apporter l'information la plus pertinente aux aidants : mise en place d'une communication web et mailing pour centraliser l’information sur les services maintenus / disponibles à distance et orienter vers les sites appropriés (ex : solidarité numérique…) 
* Sécuriser l'aide à distance pendant le confinement: le mandat Aidants Connect peut maintenant être conclu en envoyant un SMS et couvrir la durée de l'état d'urgence sanitaire.

![](/img/posts/accueil_aidants_connect.png)

## **5 - [RDV-solidarités](https://www.rdv-solidarites.fr/#info-gov)**

Suite aux mesures de confinement, les services de PMI (Protection Maternelles et Infantiles) et les services sociaux ont été contraints d’annuler tout ou partie de leurs rendez-vous sur site et à domicile.
Face à cette situation, RDV-Solidarités outille les services pour réduire le coût de coordination entre agents en favorisant la collaboration et pour leur permettre de garder le contact avec les usagers grâce aux rendez-vous téléphoniques et la prise de rdv en ligne.
Les services des Pyrénées-Atlantiques ont par exemple permis au nouveaux bénéficiaires du RSA de prendre un rdv téléphonique avec un travailleur social directement en ligne.
Quatre jour après le lancement de cette initiative déjà 30% des usagers ont pris leur premier rdv en toute autonomie.

## **6 - [Mon-entreprise.fr](http://mon-entreprise.fr/)**

Pour faire face aux conséquences économiques de la crise du coronavirus, le gouvernement encourage le recours au chômage partiel : l'État prend en charge l'indemnité versée au salarié et la procédure de déclaration a été simplifiée.

Près de la moitié des salariés sont concernés par la mesure, et tous ne connaissent pas l'impact exact sur leur revenu. Bien que des chiffres circulent (100% au SMIC, 70% ensuite), il sont approximatifs et ne prennent pas en compte le calcul des cotisations sociales et les situations particulières.

L'équipe a mis au point un simulateur permettant au salarié de calculer l'impact du chômage partiel sur son revenu net, et à l'employeur celui sur son coût total. Il prend en entrée le salaire brut, et permet d'affiner les résultats en répondant à des questions (pourcentage activité, temps partiel, etc.) [https://mon-entreprise.fr/​coronavirus](https://mon-entreprise.fr/coronavirus)

![Simulateur chômage partiel](/img/posts/chomage-partiel.png)

## **7 - [Aide aux entreprises](https://info-entreprises-covid19.economie.gouv.fr/kb)**

Elaboré avec l'aide de la startup d'Etat « Signaux Faibles » un outil pour aider les entreprises pendant la crise sanitaire est consultable [ici](https://info-entreprises-covid19.economie.gouv.fr/kb). 

Construit autour des questions les plus fréquemment posées par les entreprises (comment bénéficier du fonds de solidarité ou de l’activité partielle, comment faire une demande de prêt garanti par l’Etat, etc.), cette aide en ligne doit permettre de leur apporter des réponses simples, concrètes et immédiatement opérationnelles ainsi que les points de contact pour les accompagner à faire face à la crise du Covid-19. 

Cet outil est mis à jour quotidiennement.

Afin d’être au plus près du besoin des entreprises, un espace interactif leur permet de poser directement lesquestions qui n’auraient pas encore été traitées à ce jour. Ces questions complémentaires permettront d’enrichir la foire aux questions en tant que de besoin.

![](/img/posts/capture-d-e-cran-2020-03-31-a-20.16.50.png)

## **8 - [Signal.conso.gouv.fr](http://signal.conso.gouv.fr/)**

Pour lutter contre les nouvelles arnaques et infractions liées au COVID-19 ( encadrement des prix des gels désinfectants non respecté,, vente de masque (FFP2, chirurgicaux) non autorisée, abus sur les sites de vente en ligne, arnaque et publicité mensongère), une catégorie spécifique a été ajoutée sur SignalConso. 

Le consommateur peut signaler le problème pour aider les enquêteurs de la DGCCRF à mieux cibler leurs enquêtes. Les entreprises signalées sont également tenues au courant afin de les inciter à rectifier les pratiques.

![](/img/posts/capture-d-e-cran-2020-03-31-a-20.14.30.png)

## **9 - [Résorption Bidonvilles](https://resorption-bidonvilles.beta.gouv.fr)**

Résorption Bidonvilles permet aux parties-prenantes de savoir :

* où sont les bidonvilles ;
* qui y intervient.

Pour coordonner les interventions sur le terrain dans ce contexte d'urgence, des fonctionnalités Covid19 ont été développées :

* suivi de l'information sur l'aide alimentaire, la distribution de kit d'hygiène ;
* remontée des cas Covid.

Découvrez plus d'informations sur : <https://resorption-bidonvilles.beta.gouv.fr>

![](/img/posts/capture-d-e-cran-2020-03-31-a-20.17.51.png)

## **10 - [ANDi]([andi.beta.gouv.fr](http://andi.beta.gouv.fr/))**

Pendant la période de confinement, ANDi propose aux personnes en situation de handicap de découvrir chaque semaine des ressources et des conseils pour préparer leur projet professionnel, et s’informer à distance. 

La newsletter comporte aussi des infos accessibles permettant de se divertir et se changer les idées (infos culturelles etc.). Pour s’y inscrire, il faut se connecter sur [andi.beta.gouv.fr.](http://andi.beta.gouv.fr/)

![](/img/posts/capture-d-e-cran-2020-03-31-a-20.15.16.png)

## **11 - [demarches-simplifiees.fr](http://demarches-simplifiees.fr/)**

Le conditionnement d’une partie des agents a un effet révélateur sur la difficulté d’assurer l’instruction de démarches administratives qui ne sont pas aujourd’hui dématérialisées. Par ailleurs, certains services doivent déployer des procédure en urgence, pour répondre à de nouveaux besoins.

L’équipe “demarches-simplifiees” est mobilisée pour accompagner les acteurs de terrain et nationaux pour déployer rapidement des procédures en ligne afin que les agents, même en télétravail, puissent assurer l’instruction. Des formulaires type ont été repertoriés, une communauté sur OSMMOSE a été créée. Déjà plus d'une quarantaine de démarches liées au COVID-19 ont été déployées.

Pour en savoir plus :<https://demarches-simplifiees.gitbook.io/articles-demarches-simplifiees-fr/demarches-simplifiees-opportunites-et-regles-pour-le-teletravail>

![](/img/posts/capture-d-e-cran-2020-03-31-a-20.19.32.png)

### **Vous souhaitez vous impliquer ?**

Découvrez d'autres [initiatives](https://design.numerique.gouv.fr/covid-19) citoyennes et gouvernementales qui ont besoin de volontaires dans différents domaines (data, dev, ressources numériques, assistance aux personnes, etc).

![](/img/posts/capture-d-e-cran-2020-04-23-a-11.38.10.png)

### **Vous souhaitez ajouter une initiative ?**

[Contactez-nous](mailto:contact@design.numerique.gouv.fr) ou contribuez sur le [github](https://github.com/DISIC/design.numerique.gouv.fr) !
