<template>
  <div class="home">

    <!-- Banner -->
    <!-- <section class="banner d-flex align-items-center text-center text-white">
      <div class="container">
        <h1>Big Sale is Live</h1>
        <p>Up to 60% OFF on top brands</p>
        <button class="btn btn-light">Shop Now</button>
      </div>
    </section> -->

    <!-- CATEGORY ROW LIST -->
    <div class="container my-4">

      <div
        v-for="(cat, index) in categories.slice(0, 20)"
        :key="index"
        class="category-section"
      >
        <!-- Row Title -->
        <div class="d-flex justify-content-between align-items-center mb-2">
          <h3>{{ cat.name }}</h3>

          <RouterLink :to="`/category/${cat.slug}`" class="view-all">
            View All
          </RouterLink>
        </div>

        <!-- SINGLE ROW SCROLL CATEGORY LIST -->
        <div class="category-row">
          <div
            v-for="n in cat.products"
            :key="n"
            class="product-card"
          >
            <span class="badge-discount">-20%</span>

            <img
              :src="`https://picsum.photos/400?random-${index}${n}`"
              class="product-img"
            />

            <h6 class="product-name">
              {{ cat.name }} Product {{ n }}
            </h6>

            <p class="price">
              ₹999
              <span class="old-price">₹1299</span>
            </p>

            <button class="add-btn">
              <b class="add-name">ADD TO CART</b>
            </button>
          </div>
        </div>

        <hr />
      </div>

    </div>

  </div>
</template>

<script setup>
import { RouterLink } from "vue-router";
import { categories, products } from "@/data/categories";

import "@/assets/styles/home.css";
import "@/assets/styles/item.css";
</script>
