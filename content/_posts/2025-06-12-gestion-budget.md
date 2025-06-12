---
layout: post
title: Suivi budgétaire d'une Startup d'État
date: 2025-06-12
authors:
  - thomas.guillet
categories: general
image: /img/posts/2019-04-12-gestion-publique-101-engager-et-depenser.jpg
depenses:
- { mois: avril 2025, montant: 10000}
- { mois: mai 2025, montant: 15000}
- { mois: juin 2025, montant: 20000}
- { mois: juillet 2025, montant: 25000}
- { mois: août 2025, montant: 25000}
- { mois: septembre 2025, montant: 25000}
- { mois: octobre 2025, montant: 25000}
- { mois: novembre 2025, montant: 25000}
- { mois: décembre 2025, montant: 25000}
- { mois: janvier 2026, montant: 25000}
- { mois: février 2026, montant: 25000}
- { mois: mars 2026, montant: 25000}
- { mois: avril 2026, montant: 30000}
- { mois: mai 2026, montant: 35000}
- { mois: juin 2026, montant: 35000}
- { mois: juillet 2026, montant: 35000}
- { mois: août 2026, montant: 35000}
- { mois: septembre 2026, montant: 35000}
- { mois: octobre 2026, montant: 35000}
- { mois: novembre 2026, montant: 35000}
- { mois: décembre 2026, montant: 35000}
- { mois: janvier 2027, montant: 35000}
- { mois: février 2027, montant: 35000}
- { mois: mars 2027, montant: 35000}
- { mois: avril 2027, montant: 15000}
---
<style type="text/css">
table {
  border-collapse: collapse;
}

table,th, td {
  border: 1px solid black;
  padding: 0.2em;
}

td.montant, th.montant {
  text-align: right;
}
</style>


En [2019](/dinsic/2019/04/12/gestion-publique-101-engager-et-depenser/), on expliquait ce que sont les autorisations d'engagements (AE) et les crédits de paiement (CP) et comment les fonds publics sont dépensés.

6 ans plus tard, on prend le temps de donner des élements supplémentaires pour permettre un bon suivi budgétaire et une bonne exécution de la dépense (comme on dit dans le jargon). En effet, deux aspects importants avaient été mis de côté, le premier c'est l'allocation des crédits par année civile et le second c'est le cadre qui est imposé par les comités d'investissement.

## Illustration par l'exemple

Pour ne pas rester dans des explications théoriques, nous allons utiliser un produit imaginaire qui auraient été lancé en mars 2025 et nous allons considérer 3 comités d'investissement, avec les budgets associés suivants :

<table>
  <thead>
    <tr><th>Mois</th><th>Comité</th><th>Montant</th></tr>
  </thead>
  <tbody>
    <tr><td>Mars 2025</td><td>Lancement</td><td class="montant">125 000 €</td></tr>
    <tr><td>Septembre 2025</td><td>Investissement</td><td class="montant">150 000 €</td></tr>
    <tr><td>Mars 2026</td><td>Investissement</td><td class="montant">200 000 €</td></tr>
    <tr><td>Septembre 2026</td><td>Investissement</td><td class="montant">225 000 €</td></tr>
  </tbody>
</table>

Au total, nous nous intéressons donc à une dépense totale de 700 000 €.

Pour illustree notre propos, nous allons utiliser la consommation mensuelle suivante :

<table>
  <thead>
    <tr><th>Mois</th><th>Montant</th></tr>
  </thead>
  <tbody>
  {% for item in page.depenses %}
    <tr><td>{{item.mois}}</td><td class="montant">{{item.montant | number}} €</td></tr>
  {% endfor %}
</tbody>
</table>

Nous avons choisi d'arrêter en avril 2027, soit un mois après un potentiel 4ème comité d'investissement. Deux scénarios sont envisageables :
- un arrêt progressif sur un mois, avec les 15 000 € attribués au mois d'avril 2027 ou
- une poursuite du financement à 250 000 € par période de 6 mois pour couvrir la dépense mensuelle de 35 000 €.

## Les grands principes

### Pas de travail sans bon de commande

Les personnes qui travaillent doivent le faire avec engagement formel de l'administration. Cet engagement est matérialisé par l'émission d'un bon de commande.

Dans notre exemple, lors du comité de lancement de mars 2025, un bon de commande est émis pour 125 000 € et cela permet aux personnes de travailler dès le mois suivant, d'avril 2025.

Les émissions de bons de commande génèrent des dépenses d'autorisations d'engagement (AE), on a donc l'échéancier suivant :

<table>
  <thead>
    <tr><th>Mois</th><th>Dépenses en AE</th></tr>
  </thead>
  <tbody>
    <tr><td>Mars 2025</td><td class="montant">125 000 €</td></tr>
    <tr><td>Septembre 2025</td><td class="montant">150 000 €</td></tr>
    <tr><td>Mars 2026</td><td class="montant">200 000 €</td></tr>
    <tr><td>Septembre 2026</td><td class="montant">225 000 €</td></tr>
  </tbody>
</table>


### Les paiements aux prestataires sont faits une fois les travaux réalisés et certifiés

Comme expliqué dans l'[article précédent](/dinsic/2019/04/12/gestion-publique-101-engager-et-depenser/), le paiement des factures nécessite la certification des travaux, cela passer par des procès verbaux de services faits (ou PV de SF), ou encore par des certificats administratifs de constatations des services faits (ou CACSF).

Dans notre exemple, le paiement correspondant à la facture associée du premier bon de commande peut être effectué à partir du mois d'octobre 2025. On parle de dépenses de crédits de paiement (CP) et on a l'échéancier suivant :

<table>
  <thead>
    <tr><th>Mois</th><th>Dépenses en CP</th></tr>
  </thead>
  <tbody>
    <tr><td>Octobre 2025</td><td class="montant">125 000 €</td></tr>
    <tr><td>Avril 2026</td><td class="montant">150 000 €</td></tr>
    <tr><td>Octobre 2026</td><td class="montant">200 000 €</td></tr>
    <tr><td>Avril 2027</td><td class="montant">225 000 €</td></tr>
  </tbody>
</table>

### Les ressources financières sont calées sur les années civiles

En réalité, les dépenses de l'État sont discutées et votées par les parlementaires. Ces décisions sont prises pour des années civiles avec, ce qu'on appelle, les projets de loi de finances (initial et rectificatif).

Étant donnée que les Startups d'État sont ancrées dans l'administration, elles sont soumises aux choix budgétaires et les équipes doivent donc être conscientes de ce cadre là.

<table>
  <thead>
    <tr><th>Année</th><th>Autorisations d'engagement</th><th><i>Consommation</i></th><th>Crédits de paiement</th></tr>
  </thead>
  <tbody>
    <tr><td>2025</td><td class="montant">275 000 €</td><td class="montant">195 000 €</td><td class="montant">125 000 €</td></tr>
    <tr><td>2026</td><td class="montant">425 000 €</td><td class="montant">385 000 €</td><td class="montant">350 000 €</td></tr>
    <tr><td>2027</td><td class="montant">0 €</td><td class="montant">120 000 €</td><td class="montant">225 000 €</td></tr>
  </tbody>
  <tfooter>
    <tr><th>Total</th><th class="montant">700 000 €</th><th class="montant">700 000 €</th><th class="montant">700 000 €</th></tr>
  </tfooter>
</table>

Cette présention, à l'année civile est importante pour les comités d'investissement et pour insérer les logiques et enjeux de l'équipe dans les préoccupations et les choix de priorisation de leur administration sponsor.

Par ailleurs, on a l'habitude d'entendre « **AE égal CP** » pour signifier que l'on ne peut payer que ce que l'on a engagé. Mais cette représentation, même pour un cas simple, nous montre que les dépenses d'AE sont **en avance** et celles de CP sont **en retard** par rapport à la consommation réelle. Comme les années civiles s'enchaînent de façon arbitraire, les « photos » budgétaires reflètent rarement cet adage « AE égal CP ».

![Illustration de la dépense cumulée en AE, réel et CP avec les AE en avant et les CP en retard vis à vis du réel](/img/posts/2025-06-12-gestion-budgetaire/base.png)

Le graphique « Évolution de la dépense » illustre le fait que les AE (la courbe bleue) sont dépensées en amont et donc plus rapidement (la courbe bleue est au dessus de la rouge) que le travail est réalisé (la courbe rouge) et que les CP (la courbe jaune) sont dépensés en aval du travail (la courbe jaune est en dessus de la rouge).

## Les marges de manoeuvre

Ces décalages ont des conséquances importantes dans le suivi budgétaire et dans les relations qu'une équipe entretient avec le reste de son écosystème. Voilà quelques pistes qui peuvent être creusées pour collaborer sereinement avec les différentes parties prenantes.


### Limiter les besoins en trésorerie des attributaires

> « Tout travail mérite salaire. »

Sans vouloir revenir sur les limites de cette expression, ce qu'il faut souligner c'est que l'évolution de la courbe rouge est liée au travail de personnes qui seront rémunérées pour cet effort. Qu'elles soient salariées ou sous-traitantes de l'attributaire cela constituera une dépense pour cet attributaire. Cela étant dit, l'entreprise attributaire quant à elle sera payée lorsque des CP (crédits de paiement) sont dépensés, au rythme de la courbe jaune. Plus l'écart (vertical) entre les courbes rouge et jaune est grand, plus l'attributaire a un besoin de trésorerie important. Pour des petites entreprises cela peut générer des situations d'importantes tensions financières.

Pour cette raison, il est possible d'accélérer les dépenses de CP avec ce qu'on appelle des services faits partiels. C'est à dire que les travaux sont certifiés progressivement et en plusieurs fois sans attendre la consommation totale d'un bon de commande. Dans les faits, de plus en plus d'équipes mettent en place des services faits partiels **mensuels**.


![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-06-12-gestion-budgetaire/limite-treso.png)

Le graphique « limitation du besoin de trésorerie » illustre la mise en place des services faits partiels mensuels. On y voit que la courbe jaune est beaucoup moins décalée que la précédente (représentée en transparente).


### Sécuriser la continuité des travaux

Les changement d'année civile et les périodes de comité d'investissement peuvent générer une tension finanicère sur l'équipe. En effet, d'une part, l'émission d'un bon de commande qui permet à des personnes de travailler est impossible pendant une période allant approximativement de mi-décembre à mi-janvier et d'autre part, en amont d'un comité d'investissement il peut y avoir du stress et une certaine réticence à lancer une nouvelle commande.

Dans ce contexte, il est donc important d'anticiper la consommation et de prévoir des bons de commande qui vont au delà de ces périodes avec plus de flou. De façon très concrète il est bienvenu d'avoir 1, 2 ou 3 mois de consommation possible au delà des ces échéances là. Cette anticipation nécessite des crédits supplémentaires mais la diminution des risques de discontinuité des travaux est extrêmement précieuse.

Par ailleurs, si des réticences à financer d'un comité d'investissement sont compréhensibles, il est important d'indiquer qu'une commande peut n'être que partiellement consommée. Prenons l'exemple d'un bon de commande de 100 000 € couvre 10 mois dont 3 au delà d'un comité d'investissement. Si ce comité décide l'arrêt d'un produit numérique et que l'arrêt est finalisé en 1,5 mois, il est possible de ne payer que les 85 000 € (dépenses en CP) et d'ajuster à posteriori le montant du bon de commande à 85 000 € (pour récupérer 15 000 € en AE et les réinvestir ailleurs).

De plus, bien que cela ne semble pas évident à mettre en place dans la pratique, il est possible en décembre de chaque année de commencer à engager des AE de l'année suivante.


![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-06-12-gestion-budgetaire/securisation.png)


Dans l'exemple du graphique, la commande initiale a été revue à la baisse (courbe bleue **en dessous** de la courbe bleue claire) mais une commande complémentaire a été fait 3 mois plus tard pour couvrir 2 mois après le comité d'investissement (courbe bleue **au dessus** de la claire). L'anticipation est visible en regardant le courbe rouge atteindre le niveau (horizontal) de la courbe bleue beaucoup plus tard.



### Ajuster les dépenses aux ressources de l'administration

Comme indiqué précédemment, les Startups d'État sont au sein de l'administration. Ce positionnement, sur le volet budgétaire, est particulièrement marqué sur la période de novembre à janvier, on parle de période de fin de gestion (et c'est un tel enjeu pour l'administration qu'il y a un macro-processus budgétaire dédié, le n°4 [« Traitements de fin de gestion et opérations de fin d'exercice »](https://www.budget.gouv.fr/documentation/gestion-publique/macro-processus-budgetaires)).

Si l'administration n'a pas dépensé tous ses AE, il est possible de faire des commandes en amont pour couvrir les premiers mois de l'année suivante. Au contraire, si l'administration est plutôt limitée en AE, il faut anticiper et préparer des commandes sur des AE de l'année suivante. 

Côté paiement, c'est la même chose, si l'administration n'a pas dépensé tous ses CP, il faut constater et certifier un maximum des travaux avant la fin de l'année.

Ces réflexions et ces anticipations sont d'autant plus importantes qu'il n'est généralement pas possible d'émettre des bons de commande sur des AE de l'année après **début décembre** et que la certification des travaux s'arrête autour de **mi-décembre**.

![Illustration des ajustements possibles en fin d'année en AE et en CP](/img/posts/2025-06-12-gestion-budgetaire/ajustements.png)

Ces ajustements correspondent au déplacement des doubles flèches rouges du schéma ci-dessus qui séparent les ressources des années _N_ et _N+1_.

En résumé, présenter des informations financières concrètes, précises et réalistes lors des comités d'investissement contribue à l'établissement d'une relation de confiance avec vos sponsors et est bénéfique pour la pérennisation de vos travaux.

Pour aller plus loin, il est toujours possible de consulter la fiche du macro-processus n°3 [« Exécution de la dépense »](https://www.budget.gouv.fr/documentation/gestion-publique/macro-processus-budgetaires) mise à disposition par la direction du budget.
