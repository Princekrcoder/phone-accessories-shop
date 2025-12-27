<script setup>
import { ref } from "vue";
import { RouterLink } from "vue-router";

import "@/assets/image/laxman-logo.png";

// for opening/closing mobile menu
const isMobileMenu = ref(false);
</script>

<template>
  <div class="header-wrapper">

    <!-- ---------------- TOP BAR ---------------- -->
    <div class="top-bar">
      <div class="top-bar-content">
        <b>Hurry! Add More to Unlock Free Delivery — Ends Today!</b>

        <div class="top-links">
          <a href="#">Contact Us</a>
          <span>|</span>
          <a href="#">FAQs</a>
        </div>
      </div>
    </div>

    <!-- --------------- DESKTOP HEADER --------------- -->
    <header class="main-header">
      
      <!-- LOGO -->
      <div class="logo-wrapper">
        <img
          src="@/assets/image/laxman-logo.png"
          alt="Laxman Mobile Shop Logo"
          class="logo-img"
        />
      </div>

      <!-- NAVIGATION -->
      <nav class="nav-links">
        <a href="#"><b>MOBILE COVER</b></a>
        <a href="#"><b>MORE</b></a>
        <a href="#"><b>OFFER</b></a>
      </nav>

      <!-- SEARCH + CART + USER -->
      <div class="header-actions">
        <div class="search-box">
          <input type="text" placeholder="Search..." />
          <button class="search-icon">
            <i class="bi bi-search"></i>
          </button>
        </div>

        <RouterLink to="/cart" class="cart-btn">
          ₹2300000.00
          <i class="bi bi-bag-fill cart-icon" />
        </RouterLink>

        <button class="user">
          <i class="bi bi-person-circle" style="font-size: 32px;"></i>
        </button>
      </div>
    </header>

    <!-- --------------- MOBILE HEADER --------------- -->
    <!-- --------------- MOBILE HEADER --------------- -->
<div class="mobile-wrapper">

  <!-- TOP ROW: menu + search + cart -->
  <div class="mobile-top-row">

    <!-- MENU BUTTON -->
    <button class="mobile-menu-toggle" @click="isMobileMenu = !isMobileMenu">
      ☰
    </button>

    <!-- SEARCH FIELD -->
    <div class="mobile-search-inline">
      <input type="text" placeholder="Search..." />
      <button>
        <i class="bi bi-search"></i>
      </button>
    </div>

    <!-- CART -->
    <RouterLink to="/cart" class="mobile-cart-inline">
      <i class="bi bi-bag-fill"></i>
    </RouterLink>

  </div>

  <!-- DROPDOWN MENU (opens below row) -->
  <div class="mobile-menu" v-if="isMobileMenu">

    <button class="profile-btn">
      <i class="bi bi-person-circle" style="font-size: 36px;"></i>
    </button>

    <a href="#">Mobile Cover</a>
    <a href="#">More</a>
    <a href="#">Offer</a>
  </div>

</div>


  </div>
</template>

<style>
@import "@/assets/styles/Header.css";
</style>
