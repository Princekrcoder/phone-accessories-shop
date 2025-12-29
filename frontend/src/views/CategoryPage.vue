<template>
  <div class="container page-wrapper">

    <h2 class="page-title">
      {{ categoryTitle || "Category Not Found" }}
    </h2>

    <p class="result-line" v-if="products.length">
      Showing {{ products.length }} products
    </p>

    <!-- not found -->
    <div v-if="!products.length" class="no-result">
      No products available in this category
    </div>

    <!-- PRODUCT GRID -->
    <div class="product-grid" v-if="products.length">
      <div
        v-for="(p, i) in products"
        :key="i"
        class="product-card"
      >
        <span class="badge-discount">-20%</span>

        <img
          :src="`https://picsum.photos/400?cat-${slug}-${i}`"
          class="product-img"
        />

        <h6 class="product-name">
          {{ categoryTitle }} Product {{ i + 1 }}
        </h6>

        <p class="price">
          ₹999
          <span class="old-price">₹1299</span>
        </p>

        <button class="add-btn">
          ADD TO CART
        </button>
      </div>
    </div>

  </div>
</template>

<script setup>
import { ref, computed } from "vue";
import { useRoute } from "vue-router";

// all categories from homepage list (reuse)
import { categories } from "@/data/categories";

const route = useRoute();
const slug = route.params.slug;

// find category based on slug
const currentCategory = allCategories.find(c => c.slug === slug);

// title for top heading
const categoryTitle = currentCategory ? currentCategory.name : "";

// dummy product count based on category products number
const products = ref([]);

if (currentCategory) {
  for (let i = 0; i < currentCategory.products; i++) {
    products.value.push({
      id: i + 1,
      name: `${categoryTitle} Product ${i + 1}`
    });
}
}
</script>

<style scoped>
.no-result {
  text-align: center;
  margin-top: 40px;
  color: gray;
}
</style>
