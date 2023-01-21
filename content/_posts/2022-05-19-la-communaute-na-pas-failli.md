---
layout: post
title: " Retour vers la failure."
date: 2022-05-19
authors:
  - Benjamin.Doberset
categories: general
tags: Sécurité, communauté
image: /img/posts/thief-icon-png-17.jpg
excerpt: >-
  La faille log4shell a été critique pour de nombreux systèmes informatiques.
  Grâce à l'autonomie et la responsabilité de chaque équipe produit et le
  travail de mise en commun de la communauté, la faille a été rapidement isolée
  et son impact limité. 

  Retour vers la failure.
---
#### La vulnérabilité : que s’est il passé ?
En décembre 2021, une faille de sécurité concernant le langage Java a été publiée. Cette faille, appelée [Log4shell](https://www.ssi.gouv.fr/publication/lanssi-alerte-sur-la-faille-de-securite-log4shell/), a été l’une des plus massives et dangereuses des dernières années. Elle permettait aux attaquants d’insérer du code dans le logiciel touché puis de le faire exécuter, leur donnant alors la possibilité de récupérer les bases de données stockées par exemple. 

Cette faille a concerné directement peu de startups d'État car rares sont celles écrites en Java. En revanche, elle a touché indirectement un plus grand nombre de Startup d'État via les logiciels tiers qu’elles utilisaient pour fonctionner.

#### Comment avons-nous réagi ?
Moins de 24h après la divulgation de la faille, un message a été passé à l’ensemble des incubateurs et des startups pour leur demander de vérifier s’ils étaient concernés ou non. L’ensemble de la communauté a été mobilisé afin de réagir le plus rapidement possible.

En cas de doute sur une potentielle attaque soit directe ou indirecte (via l’utilisation d’un logiciel tiers), le service a été coupé le temps de la vérification.

#### Les résultats
##### Identification rapide des Startups potentiellement touchées grâce aux ressources collectives et la communauté

Les startups d'État écrites en java ont été faciles à identifier grâce aux dépôts de code mis en commun et ouverts sur [Github](https://github.com/betagouv) et grâce au [dashlord](https://dashlord.incubateur.net/) construit par la communauté à l'initiative de Julien Bouquillon. Les devs des startups d'État concernées ont également réagi très rapidement en patchant leurs librairies log4j.

Il a fallu plus de temps pour identifier les startups d'État qui seraient potentiellement concernées par l'utilisation de logiciels ou services externes utilisant log4j.
Au niveau international, la  communauté des agences de sécurité ont progressivement [inventorié](https://github.com/NCSC-NL/log4shell/blob/main/software/README.md) les logiciels concernés par cette vulnérabilité. Mais cet inventaire a été long à se consolider. 
Les équipes support de beta et de ses incubateurs ont donc dû anticiper et faire par eux-mêmes cet inventaire auprès de chaque développeur des startups d'État. Les prises de contact un par un des développeurs ont permis de récolter les informations, de rappeler les actions à engager: couper le service si nécessaire le temps de pouvoir patcher.
Les remontées d'information des développeurs et leurs mises en commun sur un canal mattermost et un fichier excel ont permis d'identifier les principaux logiciels utilisés et concernés: [metabase](https://github.com/metabase/metabase/releases/tag/v0.41.4) et elasticsearch (finalement non vulnérable).

##### Un temps de réaction plus court pour les logiciels tiers en Saas vs en Paas/Iaas

Un logiciel tiers comme metabase peut être utilisé sous différentes formes par les startups d'État: soit en SaaS et les patchs sont donc de la responsabilité de l'[éditeur](https://metabase.com) soit en PaaS/IaaS (auto hébergé) et les patchs sont donc de la responsabilité des devs de la startup d'État. 

Les devs concernés ont donc appliqué le patch dès que l'éditeur (metabase) l'a publié. Mais celui-ci a tardé à le faire, donc les devs ayant identifié un risque important ont dû couper leur service metabase le temps de disposer du patch. Ils ont dû également vérifier dans leurs logs qu'aucune exploitation de la vulnérabilité n'ait été faite car elle avait été publiée tardivement après sa découverte. Les équipes support ont ainsi rappelé aux équipes les actions à mener afin de prévenir et de s'assurer qu'aucune [fuite de données](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/gerer-une-fuite-de-donnees) n'ait été commise.

#### Quelles leçons à tirer de cet épisode? Comment s'améliorer?
##### La sécurité informatique est bien garantie par les équipes autonomes et responsables.

Si les startup d'État sont autonomes et responsables, elles se sont très rapidement mobilisées grâce à la communauté et à l’attention des développeurs de chaque équipe qui ont pu réagir immédiatement. Ainsi, une fois révélée, la faille n’a pas provoqué de nouveaux dégâts dans les startups. On peut donc en conclure que le modèle décentralisé d’équipes autonomes au sein d’une communauté active fonctionne à minima aussi bien en matière de sécurité que le modèle classique centralisé.

Si ces résultats sont très positifs, peut on faire mieux ? Notamment alors que les développeurs ont été les plus mobilisés - étant les mieux placés pour traiter ces incidents de sécurité - ne pourrait-on pas mettre en place des ressources collectives(au niveau des incubateurs et de la communauté communauté) pour les aider dans cette tâche? Un annuaire des membres (notamment devs) à contacter par les équipes support pourrait-il aider?

##### L’élargissement du périmètre couvert par le dashlord

La communauté des développeurs s'agrandit et il faut pouvoir plus rapidement et plus simplement identifier les logiciels et services externes qui sont concernés par des vulnérabilités. Le dashlord en répertoriant l’ensemble des principaux éléments de sécurité du logiciel est un outil d'alerte qui est utile dans ce cas. Néanmoins, il n’est pas suffisant car il n'inventorie pas les logiciels ou services externes utilisés comme metabase et autres. 

Pour pallier ce manque,'incubateur du MTE a par exemple mis en place une solution rudimentaire en no code: un tableur en ligne qui les recense et est mis à jour collaborativement par les startups d'État. Mais ce n'est pas automatisé (pas depuis le run des produits) et donc moins fiable et à jour comme peut l'être un dashlord. L’élargissement du périmètre du dashlord ou dans un premier temps un tableau centralisé rempli manuellement semble ainsi une opportunité pour améliorer notre temps de réaction.

L'enrichissement de la fiche startup sur github avec des éléments d'infra qui pourraient être ensuite récupérés par le dashlord de la même façon à ce jour mis en place par la communauté va dans ce sens.

##### Après les premiers 6 mois, faire une analyse des risques puis passer l’homologation de sécurité

Si l’excès de sécurité est contre productif, après les 6 premiers mois il est utile de faire une première analyse des risques afin de cartographier les points de faiblesses les plus importants et la manière d’y répondre.

Ensuite, avec le développement de la startup il s’agit de passer l’[homologations de sécurité](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/foire-aux-questions-sur-la-mise-en-conformite-des-services-numeriques/securite-and-homologation) obligatoires pour chaque produit en ligne. Elles sont un moyen d'inventorier l'écosystème et composants vulnérables (metabase, etc) d'un produit. Elles permettent enfin de s'assurer proportionnellement aux risques de l'adéquation des mesures (techniques ou organisationnelles) mises en place au sein de la startup d'État: outils automatisés d'alerte et de patchs ([Dependabot](https://github.com/dependabot) par exemple), dashlord, etc. Elles sont une photo des vulnérabilités et de leurs solutions à un instant T. En ce sens, elles doivent être renouvelées et sont complémentaires d’un dashlord automatiquement ou régulièrement mis à jour.  

Les équipes support des incubateurs aident et appuient les startups d'État dans la mise en œuvre de ces démarches de prises en compte et d'amélioration continue de la sécurité de leurs produits. 

#### Bonnes pratiques et ressources utiles à retenir 
##### Bonnes pratiques
Avoir le contact - mail et numéro de téléphone - de l’ensemble de l’équipe et en particulier des développeurs.

En cas de faille, regarder si son code est touché et ses logiciels tiers. S’il y a un potentiel, suspendre le service. Vérifier ensuite entre le moment de la découverte et la correction qu’aucune exploitation n’ai eu lieu.

Mettre en commun les informations sur les services touchés sur un tableau + communication via un canal dédié.

Mobiliser l’ensemble de la communauté (dev mais aussi pm, design ou déploiement) pour s’assurer que toutes les Startup ont lancé une analyse.

Avoir toujours un développeur disponible dans l’équipe pour suspendre le service en cas d’urgence.

Réaliser une analyse des risques puis une homologation de sécurité.

Développer un dashlord de suivi automatisé de la sécurité.



##### Ressources utiles


Un socle de services communs apporté par la communauté a d'ores et déjà montré son utilité dans cet épisode: 

- [mattermost](https://mattermost.incubateur.net): communication rapide et simple pour alerter et s'entraider. Un canal dédié avait été créé. 
- [offre incubateur d'hébergement PaaS Scalingo](https://scalingo.com): les équipes se concentrent sur leur app et l'hébergeur assure la sécurité de l'infra, 
- [offre incubateur de WAF Baleen](https://baleen.cloud): filtre les requêtes réseau pour protéger encore plus les produits, notamment des attaques DdoS ou d’exploits comme celles de log4shell, 
- [dashlord](https://dashlord.incubateur.net/): aide en temps réel au suivi des bonnes pratiques dev/sécu,
- [Github](https://github.com): dependabot (vulnérabilités avérées), CI/CD, CodeQL (vulnérabilités potentielles)
- [updown.io](https://updown.io): surveillance de la disponibilité des produits
