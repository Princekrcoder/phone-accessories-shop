<script setup>
import { useRoute } from "vue-router";
import { categories, products } from "@/data/categories";

import "@/assets/styles/productDetail.css";


const route = useRoute();
const slug = route.params.slug;

/* product find by slug */
const product = products.find(p => p.slug === slug);
</script>

<template>
  <div v-if="product" class="pd-page container">
    <!-- TOP SECTION -->
    <div class="pd-grid">
      <!-- LEFT IMAGE -->
      <div class="pd-left">
        <img :src="product.images[0]" class="pd-main-img" />
      </div>

      <!-- RIGHT INFO -->
      <div class="pd-right">
        <h1 class="pd-title">{{ product.name }}</h1>

        <div class="pd-price">
          <span class="pd-price-new">₹{{ product.price }}</span>
          <span class="pd-price-old">₹{{ product.mrp }}</span>
          <span class="pd-discount">({{ product.discountPercent }}% OFF)</span>
        </div>

        <p class="pd-rating">⭐ {{ product.rating }} / 5</p>

        <p class="pd-stock" :class="{ out: product.stock === 0 }">
          {{ product.stock > 0 ? 'In Stock' : 'Out of Stock' }}
        </p>

        <button class="pd-add-cart" :disabled="product.stock === 0">
          ADD TO CART
        </button>
      </div>
    </div>

    <!-- DESCRIPTION -->
    <div class="pd-description">
      <h3>Description</h3>
      <p>{{ product.description }}</p>
    </div>
  </div>

  <!-- SAFETY -->
  <div v-else class="container">
    <h2>Product not found</h2>
  </div>
</template>



