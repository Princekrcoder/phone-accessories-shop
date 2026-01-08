<script setup>
import { useRoute } from "vue-router";
import { categories, products } from "@/data/categories";

import "@/assets/css/productDetail.css";

const route = useRoute();
const slug = route.params.slug;

/* product find by slug */
const product = products.find(p => p.slug === slug);
</script>

<template>
  <div v-if="product" class="product-detail container">
    <!-- TOP SECTION -->
    <div class="detail-grid">
      <!-- LEFT IMAGE -->
      <div class="left">
        <img :src="product.images[0]" class="main-img" />
      </div>

      <!-- RIGHT INFO -->
      <div class="right">
        <h1>{{ product.name }}</h1>

        <div class="price">
          <span class="new">₹{{ product.price }}</span>
          <span class="old">₹{{ product.mrp }}</span>
          <span class="discount">({{ product.discountPercent }}% OFF)</span>
        </div>

        <p class="rating">⭐ {{ product.rating }} / 5</p>

        <p class="stock" :class="{ out: product.stock === 0 }">
          {{ product.stock > 0 ? 'In Stock' : 'Out of Stock' }}
        </p>

        <button class="add-cart" :disabled="product.stock === 0">
          ADD TO CART
        </button>
      </div>
    </div>

    <!-- DESCRIPTION -->
    <div class="description">
      <h3>Description</h3>
      <p>{{ product.description }}</p>
    </div>
  </div>

  <!-- SAFETY -->
  <div v-else class="container">
    <h2>Product not found</h2>
  </div>
</template>
