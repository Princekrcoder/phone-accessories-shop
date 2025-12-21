<script setup>
import { ref } from "vue";

const isMenuOpen = ref(false);

const openMenu = () => {
  isMenuOpen.value = true;
  document.body.style.overflow = "hidden";
};

const closeMenu = () => {
  isMenuOpen.value = false;
  document.body.style.overflow = "";
};
</script>

<template>
<div>
    <!-- HEADER -->
  <template>
  <div class="header-wrapper">
    <!-- TOP ANNOUNCEMENT BAR -->
    <div class="top-bar">
      <p>Hurry! Add More to Unlock Free Delivery — Ends Today!</p>
      <div class="top-links">
        <a href="#">Contact Us</a>
        <span>|</span>
        <a href="#">FAQs</a>
      </div>
    </div>

    <!-- MAIN HEADER -->
    <header class="main-header">
      <!-- LOGO -->
      <div class="logo">
        Zapvi
        <span class="bolt">⚡</span>
      </div>

      <!-- NAV -->
      <nav class="nav-links">
        <a href="#">MOBILE COVER</a>
        <a href="#">MORE</a>
        <a href="#">OFFER <span class="badge">NEW</span></a>
      </nav>

      <!-- SEARCH + CART -->
      <div class="header-actions">
        <div class="search-box">
          <input type="text" placeholder="Search..." />
          <span class="search-icon">🔍</span>
        </div>

        <button class="cart-btn">
          ₹0.00 🛍
        </button>
      </div>
    </header>
  </div>
</template>

</div>
</template>

<style>
@import "@/assets/styles/Header.css";
</style>
