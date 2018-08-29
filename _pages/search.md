---
layout: page
permalink: /rechercher/
title: Rechercher
---

<!-- Html Elements for Search -->
<div id="search-container">
<input type="text" id="search-input" placeholder="rechercher...">
<ul id="results-container"></ul>
</div>

<!-- Script pointing to search-script.js -->
<script src="/js/search-script.js" type="text/javascript"></script>

<!-- Configuration -->
<script>
SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('results-container'),
  json: '/search.json'
})
</script>
