---
layout: post
title: "Sécurité et RGPD - les liaisons dangereuses"
date: '2020-11-24'
authors:
  - laurent.bossavit
categories: articles
excerpt: >-
  Au sein des incubateurs d'État, notre ambition est de développer de nouveaux services publics numériques,
  le plus souvent organisés autour de produits accessibles sur Internet.  Pour ce faire nous avons mis au
  point une organisation spécifique, distincte de celle qui peut organiser par exemple le développement
  de Systèmes d'Information (SI) administratifs. Nous pensons que c'est indispensable pour assurer la
  sécurité de nos usagers… et pour les mêmes raisons, préserver leurs droits en matière de données personnelles.

  Deux constats s'imposent d'emblée: ce sujet « RGPD » devient de plus en plus pressant, et il est très fréquemment
  associé au sujet « sécurité ». Quel est le lien entre les deux et comment expliquer cette dynamique ?
---

Nous avions précédemment [expliqué](https://blog.beta.gouv.fr/general/2018/05/23/securite-numerique-produits/) en quoi « la sécurité des produits numériques n'est pas celle des SI »; les idées de cet article ayant ensuite inspiré le guide [« Agilité et sécurité numériques »](https://www.ssi.gouv.fr/uploads/2018/11/guide-securite-numerique-agile-anssi-pa-v1.pdf), co-édité par la DINUM et l'ANSSI, et résultant notamment de la mise en oeuvre de ces idées au sein de plusieurs incubateurs (DINUM, MTES, et d'autres).

Nous étudions, depuis un peu moins longtemps, la façon dont les incubateurs d'état peuvent se saisir de la question de la conformité au [RGPD](https://www.cnil.fr/fr/reglement-europeen-protection-donnees), le règlement général sur la protection des données, entré en vigueur en mai 2018. 

## La donnée personnelle : avec de grands pouvoirs viennent de grandes responsabilités

Une capacité paradoxale est au coeur de l'intérêt, mais aussi de la menace potentielle, des nouveaux produits et services de l'ère numérique : celle de la *personnalisation en masse*. Là ou l'artisan vous proposait un produit sur mesure, et où dans un second temps la révolution industrielle a permis de vous vendre « une voiture de n'importe quelle couleur du moment que c'était le noir » selon [la formule d'Henry Ford](http://oplaunch.com/blog/2015/04/30/the-truth-about-any-color-so-long-as-it-is-black/), les [GAFAM](https://fr.wikipedia.org/wiki/GAFAM) et leurs émules peuvent proposer à des millions de personnes des produits précisément adaptés à leurs goûts… sous réserve, et c'est là que le bât blesse, de pouvoir déterminer ces goûts.

Cette capacité de personnalisation s'appuie sur la captation de données relatives aux personnes et à leurs comportements, notamment (mais pas exclusivement) leurs comportements de consommateurs; elle a suscité des controverses depuis les années 2010 et la découverte (pour citer [un cas célèbre et représentatif](https://www.nytimes.com/2012/02/19/magazine/shopping-habits.html)) que les géants du commerce détenaient les moyens de savoir si vous attendiez un enfant, et de vous cibler en conséquence, même si vous pouviez penser que ça ne regardait que vous.

En cette année 2020 qui voit la planète entière confinée pour lutter contre une pandémie, il est également apparent que les traitements de données personnelles « de masse » sont au coeur de la possibilité même d'une action publique efficace. Mais cette possibilité est handicapée par l'absence de moyens *techniques* sûrs pour certifier aux administrés que leurs données seront utilisées *exclusivement* à ces fins, et non détournées pour des motifs plus sinistres de surveillance étatique, qui furent historiquement la raison de [l'existence de la CNIL](https://www.lemonde.fr/blog/bugbrother/2010/12/23/safari-et-la-nouvelle-chasse-aux-francais/). Les controverses autour des solutions technologiques pour favoriser le suivi des contacts potentiellement contaminants n'en sont qu'un exemple parmi d'autres…

## Le RGPD : un compromis politique en situation de faiblesse

Ostensiblement, le RGPD vise donc la « protection des données personnelles ». Le texte en donne une définition à mon sens maigre et insatisfaisante, notamment parce qu'elle ne capture pas cette idée de « ce qui ne regarde que moi ». Mais nous reviendrons sans doute sur ce sujet dans un prochain article destiné à délimiter quels usages des données nous semblent légitimes en tant que *concepteurs* de produits numériques qui cherchons à les améliorer, plutôt qu'à vous vendre des paquets de couches contre votre gré.

Ce qui est important, c'est de se souvenir que le RGPD est un compromis politique, arraché au termes d'une longue négociation par des États confrontés à une puissance de lobbying considérable; c'est donc une vision temporaire qui pourra évoluer dans le temps et pas forcément l'alpha et l'oméga de ce qu'il faut mettre en place pour redonner aux citoyens le contrôle de leurs données personnelles.

Il convient donc de s'intéresser à *l'usage qui a été fait* du RGPD depuis son entrée en vigueur pour mieux comprendre les effets pratiques de ce compromis.

## Le sens du RGPD à la lumière des sanctions prononcées

En particulier, pour comprendre ce qui se joue on peut consulter la [liste des sanctions](https://alpin.io/blog/gdpr-amendes/) qui ont été prononcées au titre du RGPD depuis son entrée en vigueur.

Que voit-on ? Que dans bien des cas ce qui est condamné c'est l'insuffisance des entreprises ou des administrations à protéger leur SI des intrusions.

On peut donc formuler une hypothèse : le RGPD devient progressivement le nouveau meilleur ami des fonctions supports (par exemple, les RSSI, Responsables de la Sécurité des Systèmes d'Information) dont la tâche ingrate consiste à s'assurer que les équipes qui développent ces SI et ces produits tiennent compte de l'aspect sécurité.

En effet, les sanctions pour manquement au [RGS](https://www.ssi.gouv.fr/entreprise/reglementation/confiance-numerique/le-referentiel-general-de-securite-rgs/), le référentiel de sécurité officiel de l'État, sont très faibles dans la sphère administrative. (Dans le privé, ces fonctions ont souvent été ignorées pour des raisons plus directement économiques.)

La situation avant 2018 et l'adoption du RGPD dans le droit français reflétait un équilibre entre les incitations à privilégier autre chose (les fonctionnalités par exemple) au détriment de la sécurité, et les sanctions qui pouvaient découler de ne pas les prendre en compte du tout.

Le nombre de fuites massives d'information et leurs conséqences délétères constatées ces dernières années conduisent à conclure que cet équilibre est insatisfaisant. On peut donc se réjouir que la mise en place du RPGD conduise à une meilleure prise en compte de la sécurité.

## Le revers de la médaille : des dérives systémiques à prévoir

Mais c'est aussi une mauvaise nouvelle, pour plusieurs raisons.

D'une part cette situation est truffée d'opportunités pour des conséquences inattendues. Le RGPD institue des sanctions pour les *victimes* de cyberattaques mais pas pour les coupables; ses principaux bénéficiaires ne sont pas les usagers qu'il est censé protégér mais les régulateurs internes, dont la seule incitation est de dire « non ». Des [sites Internet basés aux Etats-Unis](https://data.verifiedjoseph.com/dataset/websites-not-available-eu-gdpr) refusent maintenant purement et simplement de s'afficher aux visiteurs dont l'adresse IP est détectée comme étant en Europe : c'est de la discrimination à l'entrée du magasin, basée sur des informations personnelles…

Plus proche de nous, le RGPD va donc venir s'ajouter au RGS sur la liste des obligations qui idéalement doivent être prises en compte « dès le début » (au même titre que la qualité logicielle, l'accessibilité, l'ergonomie, l'interopérabilité, la prise en compte des normes et standards…)

Or ce que l'on observe pour les pratiques de sécurité, c'est qu'elles souffrent d'un schéma systémique de sélection adverse ou « anti-sélection » nommé [« market for lemons »](https://fr.wikipedia.org/wiki/The_Market_for_%E2%80%9CLemons%E2%80%9D), qu'on pourrait traduire par « pourquoi on se fait refiler des rossignols ». Il s'appuie sur une asymétrie d'information entre le vendeur (qui connait la qualité de son véhicule) et de l'acheteur (qui est nettement moins bien placé pour l'évaluer). Le résultat est la généralisation des véhicules de moindre qualité sur le marché. Plus généralement le terme d'anti-sélection désigne des mécanismes apparentés, par lesquels les mauvaises prestations bénéficient d'un avantage qui font qu'elles dominent le marché et en chassent les prestations de qualité.

Les marchés de la DINUM nous permettent par exemple de commander un « test d'intrusion » pour environ 15 000 €, soit entre 5 et 10% du budget des 6 premiers mois pour un de nos produits ; c'est substantiel. Mais comment distinguer entre un bon et un mauvais test d'intrusion ? Pour l'acheteur, il est clairement plus agréable qu'un test ne montre pas de problèmes sérieux de sécurité. Or cela est clairement en faveur de testeurs qui se contentent du « minimum syndical » lors de la recherche de failles; ou bien qui fonctionnent sur la base d'une checklist de caractéristiques qui *peuvent* indiquer une faille de sécurité même si celle-ci n'est pas rigoureusement démontrée.

Il existe donc un risque bien réel que les investissements en sécurité se traduisent par une augmentation de la facture, mais pas une amélioration de la sécurité. On parle aussi dans la spère anglophone de « security theater », ou sécurité théatrale : des activités qui donnent l'apparence de se préoccuper de sécurité mais sans impact réel.

On peut transposer ce raisonnement à l'identique sur les sujets relevant de la protection de la vie privée et des données personnelles : le risque d'une prolifération de protections « théatrales » se traduisant par des activités obligatoires et coûteuses en argent public mais sans impact réel.

## Notre réponse aux dangers de l'anti-sélection

La stratégie en cours de déploiement dans plusieurs de nos incubateurs consiste à transposer cette idée maitresse de la démarche d'homologation : « trouver un équilibre entre le risque acceptable et les coûts de sécurisation, puis [...] faire arbitrer cet équilibre, de manière formelle, par un responsable qui a autorité pour le faire ».

Il s'agit donc de faire correspondre aux différents moments de la vie d'un service public numérique (ses activités d'investigation, de construction, de généralisation, etc.) des profondeurs variables de l'étude des risques sur la vie privée et de sa formalisation, ainsi que des pratiques et des précautions spéficiques à cette étape.

Ainsi en phase d'investigation on peut être amené à recueillir des témoignages d'usagers, on va s'attacher à les protéger de façon raisonnable : pas question par exemple de les exposer dans un dépôt Github ! Mais un cercle élargi autour de l'équipe produit peut légitimement être amené à consulter ces informations. La conformité au cadre légal implique bien entendu d'informer les usagers qu'on recueille ces données pour les examiner dans le cadre de la construction du produit.

Dès lors qu'on commence à écrire du code, un cadre différent commence à exister ; on va alors considérer que les finalités du traitement, au sens du RGPD, commencent à être claires, et on va les expliciter dans une page CGU par exemple. Sur cet exemple précis le partage d'expérience et de modèles entre nos équipes est actuellement le principal moteur.

Comme pour le reste de nos productions, cette carte de correspondance est évolutive et amenée à incorporer des retours d'expérience, une première version est [disponible ici](https://doc.incubateur.net/communaute/outils/guide-rgpd-et-securite). Si vous souhaitez participer à son élaboration, n'hésitez pas à [nous faire part de vos remarques et suggestions](rgpd@beta.gouv.fr).

Nous continuons ainsi à traiter les problématiques relevant de la conformité règlementaire en général « à la façon beta », c'est-à-dire en maintenant une exigence sur les finalités (protection des systèmes, de la vie privée des usagers) tout en faisant preuve d'adaptation quant aux moyens !
