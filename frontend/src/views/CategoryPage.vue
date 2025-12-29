<template>
  <div class="container page-wrapper">

    <h2 class="page-title">
      {{ categoryTitle || "Category Not Found" }}
    </h2>

    <p class="result-line" v-if="ProductList.length">
      showing {{ ProductList.lemgth }} products
    </p>

    <!-- Not Found -->

    <div v-if="!ProductList.lenght" class="no-result">
      No products avail
    </div>

  </div>
</template>