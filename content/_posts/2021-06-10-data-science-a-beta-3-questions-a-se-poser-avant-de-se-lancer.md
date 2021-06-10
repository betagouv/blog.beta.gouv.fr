---
layout: post
title: "Data science à beta.gouv : 3 questions à se poser avant de se lancer"
date: 2021-06-10
authors:
  - vincent.viers
categories: general
tags: data
image: /img/posts/pexels-lukas-590020.jpg
---
*J’ai rejoint beta.gouv il y a 9 mois pour accompagner des startups d'État sur le cadrage, le prototypage, et la pérennisation de projets autour de la science des données. Cet article vise à guider tout service numérique public qui hésite à investir dans la valorisation de ses données.*

Toute startup d'État ou service numérique public génère des données, et ce dès ses premiers balbutiements. Données utilisateurs et métier, données techniques (logs, erreurs, etc.), ou données récupérées auprès de partenaires institutionnels ou privés. Se pose donc rapidement et naturellement la question de l’utilisation et de la valorisation de ces données.

Voilà les 3 questions à se poser avant de démarrer l’aventure “data”.

# La *data science*, pour quoi faire ?

Il est parfois tentant de vouloir à tout prix trouver une utilité à ses données. Après tout, l’industrie nous affirme à longueur de journée que la data est le pétrole du 21ème siècle et qu’il serait dommage de rester assis sur une telle opportunité — vite, vite, des cas d’usage data !

Le problème avec cette expression est qu’elle n’est pas exacte. **Les données n’ont absolument aucune valeur intrinsèque et ne sont utiles que dans la mesure où elles permettent de résoudre un réel problème métier ou usager.**

La bonne approche consiste donc à toujours partir d’un problème ou d’un irritant dont la résolution apporterait réellement de la valeur aux utilisateurs et utilisatrices du service numérique public. Puis, dans un second temps, on peut se demander si la science des données propose des outils pertinents pour y apporter une solution.

S’inspirer de ce qui se fait dans d’autres startups d’état ou suivre les activités du *[Lab IA](https://www.etalab.gouv.fr/datasciences-et-intelligence-artificielle)* de la DINUM permet de se familiariser aux types de problématiques que la science des données peut aider à résoudre, ainsi que [certains catalogues agrégeant des cas d’usage data](https://github.com/amusi/awesome-ai-awesomeness). 

En bref, les principaux cas d’usages envisageables avec des données sont :

* **Descriptifs** (**qu’est ce qui s’est passé ?**) → la [plateforme de l’inclusion](https://pilotage.inclusion.beta.gouv.fr/) (Itou) propose à certains de ses utilisateurs institutionnels des tableaux de bords permettant de suivre le flux de personnes éloignées de l'emploi qui ont émis une candidature ou été orientés vers une entreprise d'insertion et qui n’ont pas encore obtenu de réponse
* **Diagnostiques** (**pourquoi quelque chose s’est passé ?**) → le défi [Entrepreneur d'Intérêt Général](https://entrepreneur-interet-general.etalab.gouv.fr/) (EIG) [Opérations 18](https://entrepreneur-interet-general.etalab.gouv.fr/defis/2020/operations-18.html) permet de "rejouer" des décisions d’interventions passées de la Brigade de sapeurs-pompiers de Paris pour voir si une meilleure allocation des ressources opérationnelles aurait été possible
* **Prédictifs** (**que va-t-il sûrement se passer ?**) → [Signaux Faibles](https://beta.gouv.fr/startups/signaux-faibles.html) utilise un algorithme prédictif de la défaillance d’entreprise à 18 mois afin de permettre un accompagnement précoce par l’administration.
* **Prescriptifs** (**que faire ?**) → [PIX](pix.fr), qui permet d’évaluer, de développer et de certifier ses compétences numériques, adapte la difficulté de ses questions en fonction des réponses précédentes de l’utilisateur.

# La *data science*, avec quelles données ?

Si partir d’un bon cas d’usage doit être le point de départ de tout projet data, s’assurer de disposer des bonnes données permettant de l’aborder est également essentiel. La science des données n’est pas magique : il est impossible d’analyser ou de prédire des variables qui ne sont pas d'abord mesurées.

Une base de données de qualité est bien plus importante pour le succès d’un projet que l’utilisation de modèles compliqués. L’exemple de Signaux Faibles l’illustre bien : l’acquisition récente d’une nouvelle base de données sur les retards de paiements de factures des entreprises a permis au modèle prédictif de gagner en performances sans toucher au modèle algorithmique.

En phase d’investigation, lister l’ensemble des données disponibles pour le projet est donc très utile, en particulier :

* Leur **source** (data.gouv.fr, la DARES, un partenaire privé, etc.)
* Leur **fréquence temporelle** (temps réel, quotidienne, mensuelle, etc.)
* Leur **profondeur d’historique** (1an, 5ans, depuis 1970, etc.)
* Leur **niveau de couverture** (55% des entreprises françaises, 1 région seulement, 100% des utilisateurs actifs, etc.)

Cet exercice permet par la suite de lister les données dont le projet ne dispose pas et qui devront être récupérées afin de permettre de travailler sur les cas d’usage envisagés. 

Cette étape de collecte de données est souvent longue et difficile. Signaux Faibles a par exemple passé plusieurs mois à récupérer un historique de procédures collectives ainsi que des données sur la santé économique des entreprises avant de pouvoir commencer à entraîner un algorithme prédictif de la défaillance sur cet ensemble de données.

Il vaut souvent mieux commencer par de petits échantillons de données — souvent obtenus à des fins d’exploration et donc plus facilement — qui permettent de rapidement se rendre compte de leur qualité et de leur potentiel, et donc de bien gérer la balance coût d’acquisition de la donnée / utilité.

# La *data science*, avec qui ?

L’expression maladroite “faire de la data” recouvre des réalités bien différentes, et l’industrie a convergé vers trois grands types de postes que l’on peut grossièrement placer sur un spectre allant du métier au technique.

* Un profil ***data analyst*** est spécialisé dans l’analyse descriptive des données et sa communication efficace avec les consommateurs de la donnée (collègues ou utilisateurs) — le plus souvent via des rapports ponctuels ou bien automatisés sous forme de tableaux de bord. Ce poste est parfois appelé “Business Analyst” dans le privée et nécessite une compréhension pointue des réalités métier derrière les données afin d’être le plus utile possible et d’éviter les contre-sens.
*  Un profil ***data scientist*** est spécialisé dans le déploiement de modèles d’apprentissage automatique à des fins prédictives (machine learning, intelligence artificielle). Selon [un diagramme de Venn bien connu](https://towardsdatascience.com/why-the-data-science-venn-diagram-is-misleading-16751f852063), elle ou il a besoin de bonnes compétences en programmation informatique, en statistiques, ainsi que d’une solide compréhension des problématiques métier qu’elle ou il se propose de résoudre.
* Un profil ***data engineer*** est spécialisé dans le développement de la plomberie qui permet de collecter, transformer, stocker et mettre à disposition les données qui seront par la suite utilisées par les autres membres de l’équipe data. De réelles compétences en développement informatique ainsi qu’une appétence pour les sujets ayant attrait à la (parfois big-) data et aux bases de données sont nécessaires.

Ces profils archétypaux représentent plutôt des sommes de compétences et se recoupent souvent en pratique. On peut très bien trouver des data scientists avec de très bonnes connaissances en ingénierie logicielle, des data engineers passionnés par la data visualisation, ou des data analysts naviguant volontiers dans l’univers du machine learning.

Dans tous les cas, un écueil à éviter à tout prix est celui du “recrutement data avant la data”. J’ai déjà vu des data scientists (ou analysts) découvrir le jour de leur prise de poste qu’ils n’ont aucune donnée facilement accessible à se mettre sous la dent ! Recruter un profil data sans avoir de données à lui fournir est un petit peu comme recruter un chauffeur de bus sans avoir de bus : ce chômage technique forcé ne sera bon ni pour le moral de vos recrues, ni pour votre budget.

En résumé, si vous n’aviez que 4 choses à retenir :

1. Un cas d’usage data doit partir d’un problème métier et jamais de la donnée disponible
2. Listez l’ensemble des données disponibles pour votre projet et réfléchissez à celles qu’il vous serait utile de récolter
3. Pensez à bien choisir les compétences data adaptées à la construction de votre projet
4. N’hésitez pas à [me contacter](mailto:vincent.viers@beta.gouv.fr) pour échanger sur les spécificités de votre projet.