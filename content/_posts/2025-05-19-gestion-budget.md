---
layout: post
title: Suivi budgétaire d'une Startup d'État
date: 2025-05-19
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

Par ailleurs, on a l'habitude d'entendre **AE égal CP** pour signifier que l'on ne peut payer que ce que l'on a engagé. Mais cette représentation, pour un cas simple, nous montre que les dépenses d'AE sont **en avance** et celles de CP sont **en retard** par rapport à la consommation réelle.

![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-05-19-gestion-budgetaire/base.png)

## Les marges de manoeuvre

### Limiter les besoins en trésorerie

- Des SF partiels mensuels.
décrire l'espace entre les courbes rouge et jaune
![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-05-19-gestion-budgetaire/limite-treso.png)

### Sécuriser la continuité des travaux

Décrire les endroits où les courbes bleu et rouge se touchent comme un risque

![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-05-19-gestion-budgetaire/securisation.png)

Bien évidemment, il est possible en décembre de chaque année de commencer à engager des AE de l'année suivante. C'est une façon d'anticiper.


### Ajuster les dépenses aux crédits de l'administration

![Illustration de la dépense cumulée en AE, réel et CP](/img/posts/2025-05-19-gestion-budgetaire/ajustements.png)


Présenter des informations financières concrètes, précises et réalistes lors des comités d'investissement constitue un levier important pour gagner la confiance de vos sponsors et pour sécuriser l'avancement et la pérennisation de vos travaux.
