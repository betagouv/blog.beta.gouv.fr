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

th {
  padding: 0 1em;
}

td.montant {
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

Nous avons choisi d'arrêter en avril 2027, soit un mois après un potentiel 4ème comité d'investissement. Avec les informations utilisées à titre d'exemple, deux scénarios sont envisageables :
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

Dans notre exemple, le paiement correspondant de la facture associée au premier bon de commande peut être effectué à partir du mois d'octobre 2025. On parle de dépenses de crédits de paiement (CP) et on a l'échéancier suivant :

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





###  AE égal CP

- AE en avance
- CP en retard



## Les marges de négociations

### Engager plus vite

### Dépenser plus lentement



Présenter des informations financières concrètes, précises et réalistes lors des comités d'investissement constitue un levier important pour gagner la confiance de vos sponsors et de sécuriser l'avancement de vos travaux.
