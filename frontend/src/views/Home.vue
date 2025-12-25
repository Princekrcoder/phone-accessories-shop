<template>
  <div class="page-wrapper">

    <!-- Page Title -->
    <div class="container">
      <h2 class="page-title">Mobile Accessories</h2>
      <p class="result-line">Showing 1–12 of 22 results</p>
    </div>

    <!-- Product Grid -->
    <div class="container">
      <div class="product-grid">

        <div
          v-for="n in 20"
          :key="n"
          class="product-card"
        >
          <span class="badge-discount">-20%</span>

          <img
            :src="`https://picsum.photos/400?random-${n}`"
            class="product-img"
          />

          <h4 class="product-name">
            Product {{ n }}
          </h4>

          <p class="price">
            ₹299
            <span class="old-price">₹499</span>
          </p>

          <button class="add-btn">
            ADD TO CART
          </button>
        </div>

      </div>
    </div>

    <!-- long description section -->
    <section class="desc-section">
      <div class="container">
        <h3>Mobile Accessories</h3>
        <p>
          Buy best mobile accessories online shopping in India. Shop mobile phone
          accessories like cables, chargers, holders, earphones and more.
        </p>
      </div>
    </section>

  </div>
</template>


<script setup>
import { RouterLink } from "vue-router";
import "@/assets/styles/home.css";
import "@/assets/styles/item.css";
</script>

