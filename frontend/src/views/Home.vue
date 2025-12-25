<template>
  <div class="page-wrapper">

    <div class="container">
      <h2 class="page-title">Mobile Accessories</h2>
      <p class="result-line">Showing 1–20 of 20 results</p>
    </div>

    <!-- PRODUCT GRID -->
    <div class="container">
      <div class="product-grid">

        <!-- Skeleton while loading -->
        <div
    v-if="loading"
    v-for="n in 10"
    :key="'skeleton-' + n"
    class="product-card skeleton"
  >
          <div class="skeleton-img"></div>
          <div class="skeleton-line short"></div>
          <div class="skeleton-line"></div>
          <div class="skeleton-btn"></div>
        </div>

        <!-- Products -->
        <div
    v-else
    v-for="n in 20"
    :key="n"
    class="product-card"
  >
          <!-- Discount -->
          <span class="badge-discount">Limited Offer</span>

          <!-- Image -->
          <img
            :src="`https://picsum.photos/400?product-${n}`"
            class="product-img"
          />

          <!-- Name -->
          <h4 class="product-name">
            Premium Mobile Accessory Product {{ n }} Super Edition
          </h4>

          <!-- Rating -->
          <div class="rating">
            ★★★★☆
          </div>

          <!-- Price -->
          <p class="price">
            ₹299 <span class="old-price">₹499</span>
          </p>

          <!-- Conditional button -->
          <button
            v-if="n % 3 === 0"
            class="option-btn"
          >
            SELECT OPTIONS
          </button>

          <button
            v-else
            class="add-btn"
          >
            ADD TO CART
          </button>
        </div>

      </div>
    </div>

  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";

import "@/assets/css/home.css";
import "@/assets/css/item.css";

const loading = ref(true);

onMounted(() => {
  setTimeout(() => {
    loading.value = false;
  }, 1200);
});
</script>
