---
layout: post
title: 'Gestion publique 101 Engager et dépenser'
authors:
  - thomas.guillet
categories: dinsic
image: /img/posts/lery-1024x576.jpg
excerpt: >-
  Les Startups d'État sont des équipes autonomes. Elles sont intégrées, c'est à dire avec toutes les compétences pour répondre au problème qu'elles se sont données à résoudre. Il y a toutefois une problématique que nous ne faisons pas porter dès le départ aux équipes : la comptabilité publique. Voici quelques éléments pour en savoir plus et gagner en autonomie sur ce sujet aussi.
---

<script src="/assets/additional/js/d3.js" type="text/javascript"></script>

Nota bene&nbsp;: Cette description est une simplification de la réalité qui peut outiller les équipes autonomes des Startups d'État. Les plus zélés pourront consulter [le macro processus budgétaire et comptable #3&nbsp;: exécution de la dépense](https://www.performance-publique.budget.gouv.fr/cadre-gestion-publique/macro-processus-budgetaires-comptables#mp3).

## Un achat classique _dans le privé_

Lorsqu'une société souhaite acheter des produits auprès d'un fournisseur, on passe par les étapes suivantes.
- Le client potentiel exprime son besoin à son fournisseur.
- Le fournisseur transmet un devis à son futur client.
- Le client accepte un devis en lui transmettant un bon de commande.
- Après un certain temps, le fournisseur livre une partie de la commande.
  - À cette livraison, le fournisseur ajoute une facture correspondante à la partie livrée.
- 30 jours après l'émission de la facture, le client paie le fournisseur.
- Le fournisseur livre le reste de la commande avec une facture finale.
- Le client, 30 jours plus tard, paie la facture finale.
- Tout le monde est content.

Pour illustrer cet achat, on peut regarder les dépenses réalisées par le client en fil du temps.

<svg id="chart1"></svg>

Avec cette illustration, on voit bien que les flux d'argent ne capturent que partiellement ce processus d'achat.

## Des processus longs et un suivi plus fin nécessaire

Si il fallait le préciser, l'État français est une grosse organisation. En tant qu'organisation, il a besoin de suivre finement ses dépenses pour s'assurer que tout se passe bien. C'est en particulier le cas quand plusieurs années séparent la livraison de l'expression de besoin.

C'est pour cette raison que l'État, en plus de comptabiliser ces dépenses d'argent sonnant et tribuchant, comptabilise ses engagements. À chaque émission de bon de commande, on enregistre une dépense. Ainsi, on se retrouve au sein de l'État avec deux comptes différents&nbsp;:
- Un compte pour suivre les engagements matérialisés par les bons de commandes. Pour ce compte, on parle d'**autorisations d'engagement** (AE).
- Un second compte pour suivre les euros qui vont *effectivement* arriver sur les comptes de ses prestataires. Pour ce compte, on parle de **crédit de paiement** (CP).

<svg id="chart2"></svg>

Comme le graphique l'illustre bien, toute dépense en autorisations d'engagement fera l'objet d'une dépense en crédit de paiement à un moment dans le futur.
Ces deux comptes permettent d'avoir une meilleure vision de la situation budgétaire.


## Des étapes supplémentaires

Comme dans les autres grandes organisations qui ont des services achat, les services de l'État sont accompagnées par des services gestionnaires. Cela ajoute deux étapes importantes dans le processus d'achat décrit précédemment.

- Un service de l'État exprime son besoin à son fournisseur.
- Le fournisseur lui transmet un devis.
  - _Pour accepter ce devis, le service de l'État transmet une demande d'achat à ses gestionnaires._
- Cette demande d'achat est instruite et génère un bon de commande transmis au fournisseur.
  - _La dépense d'autorisation d'engagement coincide avec l'émisison du bon de commande._ 
- Après un certain temps, le fournisseur livre une partie de la commande.
  - _Le service de l'État établi un procès verbal de service fait qui confirme la livraison effectuée._
- Le fournisseur envoie une facture correspondante à la partie livrée au service facturier.
- 30 jours après l'émission de la facture, l'État paie le fournisseur.
  - _Il y a, à ce moment-là, une dépense de crédits de paiment._
- Enfin, le fournisseur livre le reste de la commande avec une facture finale.
  _- Cette livraison finale fait, elle aussi, l'objet d'un procès verbal de service fait._
  - Le fournisseur émet une facture finale.
- L'État, 30 jours plus tard, paie la facture finale.
   - _Il y a, là encore, une dépense de crédits de paiment._
- Tout le monde est content.

<svg id="chart3"></svg>

## Mais pourquoi nous infliger tout ça ?

Jusqu'à présent, l'incubateur de services numériques prenait à sa charge cette complexité et sa gestion. En passant de 2 délégations de gestion en 2017 à XXX en 2018, nous voyons bien la nécessaire d'autonomiser et de responsabiliser les équipes des Startups d'État sur ces sujets budgétairo-comptables.

Pour annoncer le prochain sujet dans cette série.

Le FAST

<style type="text/css">
  svg {
    background-color: #F9F9F9;
  }

  path {
    stroke: black;
    stroke-width: 1px;
    fill: none;
  }
</style>
<script type="text/javascript">
var height = 300;
var width = 800;
var margin = {
  top: 50,
  bottom: 130,
  left: 40,
  right: 40,
}

function chart(document, data, title, colorOffset) {
  colorOffset = colorOffset || 0;
  var svg = document
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

  var x = d3.scaleBand([0, 800])
    .padding(0.1);

  var xAxis = d3.axisBottom()
    .scale(x);

  var xAxisGroup = svg.append("g")
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")");

  x.range([0, width])
  x.domain(data[0].points.map(function(d) { return d.name; }));
  xAxisGroup.call(xAxis);

  xAxisGroup.selectAll(".tick text")
    .call(wrap, x.step());

  var y = d3.scaleLinear()
    .range([height, 0]);
  y.domain([0, 1]);

  var title = svg.append("text")
    .attr("class", "title")
    .attr("y", -20)
    .attr("x", 20)
    .text(title);

  var yAxis = d3.axisLeft()
    .scale(y)
    .ticks(3);

  var yAxisGroup = svg.append("g")
    .attr("class", "y axis");

  yAxisGroup.call(yAxis);

  var line = d3.line()
    .x(function(d, i) { return x(d.name) + x.step()*0.45; })
    .y(function(d, i) { return y(d.value || 0); })
    .curve(d3.curveStepAfter);

  var colors = d3.scaleOrdinal(d3.schemeCategory10).domain([0,1,2,3]);

  var steps = svg.append("g").selectAll('path').data(data, function(d) { return d.name; });
  steps
    .enter()
    .datum(function(d) { return d.points; })
    .append('path')
    .attr('d', line)
    .style('stroke-width', 3)
    .style('stroke', function(d, i) { return colors(i + colorOffset); });

  var legend = svg.append("g")
    .attr("transform", "translate(10, 0)")

  var items = legend.selectAll("g").data(data).enter()
    .append("g")
    .attr("transform", function(d, i) { return "translate(10," + i*20 + ")"; })

  items.append("rect")
    .attr("x", 10)
    .attr("y", 10)
    .attr("width", 10)
    .attr("height", 10)
    .style('fill', function(d, i) { return colors(i + colorOffset); });

  items.append("text")
    .attr("x", 30)
    .attr("y", 20)
    .text(function(d) { return d.name; })

  return chart;
}

var achatClassique = [{
  name: 'Euros engagés',
  points: [
    { name: "Le client exprime un besoin" },
    { name: "Le fournisseur envoie un devis" },
    { name: "Le client accepte le devis en émettant un bon de commande", value: 1 },
    { name: "Le fournisseur livre partiellement la commande avec une facture", value: 1 },
    { name: "À 30 jours, le client paie la facture", value: 1 },
    { name: "Le fournisseur livre la commande complètement avec une facture de clôture", value: 1 },
    { name: "À 30 jours, le client paie la facture finale", value: 1 },
    { name: "Tout le monde est content", value: 1 },
  ]},{
  name: 'Euros décaissés',
  points: [
    { name: "Le client exprime un besoin" },
    { name: "Le fournisseur envoie un devis" },
    { name: "Le client accepte le devis en émettant un bon de commande" },
    { name: "Le fournisseur livre partiellement la commande avec une facture" },
    { name: "À 30 jours, le client paie la facture", value: 0.5 },
    { name: "Le fournisseur livre la commande complètement avec une facture de clôture", value: 0.5 },
    { name: "À 30 jours, le client paie la facture finale", value: 1 },
    { name: "Tout le monde est content", value: 1 },
  ]},
]

chart(d3.select('#chart1'), achatClassique.slice(1), 'Achat classique dans le privé', 1)
chart(d3.select('#chart2'), achatClassique, 'Achat classique dans le privé en prenant en compte les engagements')
chart(d3.select('#chart3'), [{
  name: "Autorisations d'engagement (AE)",
  points: [
    { name: "Un service de l'État exprime son besoin à son fournisseur" },
    { name: "Le fournisseur lui transmet un devis" },
    { name: "le service de l'État transmet une demande d'achat à ses gestionnaires" },
    { name: "Cette demande d'achat est instruite et génère un bon de commande transmis au fournisseur", value: 1 },
    { name: "Le fournisseur livre partiellement la commande avec une facture", value: 1 },
    { name: "Le service de l'État établi un procès verbal de service fait", value: 1 },
    { name: "À 30 jours, le client paie la facture", value: 1 },
    { name: "Le fournisseur livre la commande complètement avec une facture de clôture", value: 1 },
    { name: "Le service de l'État établi un procès verbal de service fait final", value: 1 },
    { name: "À 30 jours, le client paie la facture finale", value: 1 },
    { name: "Tout le monde est content", value: 1 },
  ]},{
  name: 'Crédits de paiement (CP)',
  points: [
    { name: "Un service de l'État exprime son besoin à son fournisseur" },
    { name: "Le fournisseur lui transmet un devis" },
    { name: "le service de l'État transmet une demande d'achat à ses gestionnaires" },
    { name: "Cette demande d'achat est instruite et génère un bon de commande transmis au fournisseur", value: 0 },
    { name: "Le fournisseur livre partiellement la commande avec une facture", value: 0 },
    { name: "Le service de l'État établi un procès verbal de service fait", value: 0 },
    { name: "À 30 jours, le client paie la facture", value: 0.5 },
    { name: "Le fournisseur livre la commande complètement avec une facture de clôture", value: 0.5 },
    { name: "Le service de l'État établi un procès verbal de service fait final", value: 0.5 },
    { name: "À 30 jours, le client paie la facture finale", value: 1 },
    { name: "Tout le monde est content", value: 1 },
  ]}
], 'Achat dans l’État')

function wrap(text, width) {
  text.each(function() {
    var text = d3.select(this),
      words = text.text().split(/\s+/).reverse(),
      word,
      line = [],
      lineNumber = 0,
      lineHeight = 1.1, // ems
      y = text.attr("y"),
      dy = parseFloat(text.attr("dy")),
      tspan = text.text(null).append("tspan").attr("x", 0).attr("y", y).attr("dy", dy + "em");
    while (word = words.pop()) {
      line.push(word);
      tspan.text(line.join(" "));
      if (tspan.node().getComputedTextLength() > width) {
        line.pop();
        tspan.text(line.join(" "));
        line = [word];
        tspan = text.append("tspan").attr("x", 0).attr("y", y).attr("dy", ++lineNumber * lineHeight + dy + "em").text(word);
      }
    }
  });
}
</script>
