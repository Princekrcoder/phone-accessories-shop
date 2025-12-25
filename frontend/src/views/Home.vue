<template>
  <div>

    <!-- Header -->
    <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand" href="#">MyStore</a>

        <button
          class="navbar-toggler"
          data-bs-toggle="collapse"
          data-bs-target="#menu"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div id="menu" class="collapse navbar-collapse">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item"><RouterLink class="nav-link" to="/">Home</RouterLink></li>
            <li class="nav-item"><RouterLink class="nav-link" to="/products">Products</RouterLink></li>
            <li class="nav-item"><RouterLink class="nav-link" to="/contact">Contact</RouterLink></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Banner -->
    <section class="banner d-flex align-items-center text-center text-white">
      <div class="container">
        <h1>Big Sale is Live</h1>
        <p>Up to 60% OFF on top brands</p>
        <button class="btn btn-light">Shop Now</button>
      </div>
    </section>

    <!-- Categories -->
    <div class="container my-5">
      <h3 class="mb-3">Shop by Category</h3>

      <div class="row g-4">
        <div class="col-6 col-md-3" v-for="n in 4" :key="n">
          <div class="cat-box">
            <img :src="`https://picsum.photos/200?category-${n}`" />
            <p>Category {{ n }}</p>
          </div>
        </div>
      </div>
    </div>

    <!-- Product List -->
    <div class="container my-4">
      <h3 class="mb-3">Latest Products</h3>

      <div class="row g-4">
        <div
          class="col-12 col-sm-6 col-md-4 col-lg-3"
          v-for="n in 8"
          :key="n"
        >
          <div class="card item-card">
            <span class="badge-discount">-20%</span>

            <img
              :src="`https://picsum.photos/400?product-${n}`"
              class="card-img-top"
            />

            <div class="card-body">
              <h6 class="card-title">Product {{ n }}</h6>

              <p class="price">
                ₹999 <span class="old-price">₹1299</span>
              </p>

              <button class="btn btn-primary w-100">Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center p-3 mt-5">
      © 2025 MyStore. All Rights Reserved.
    </footer>
  </div>
</template>

<script setup>
import { RouterLink } from "vue-router";
import "@/assets/styles/home.css";
import "@/assets/styles/item.css"
</script>

