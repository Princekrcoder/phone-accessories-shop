<script setup>
import { ref, watch } from "vue";
import { RouterLink } from "vue-router";

import "@/assets/image/laxman-logo.png";

const isMobileMenu = ref(false);
const isSearchOpen = ref(false);

// 🔒 Body scroll lock when menu open
watch(isMobileMenu, (val) => {
  document.body.style.overflow = val ? "hidden" : "auto";

  // menu open hote hi search band
  if (val) {
    isSearchOpen.value = false;
  }
});
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
        <div class="header-inner">

            <!-- LOGO -->
            <div class="logo-wrapper">
                <img src="@/assets/image/laxman-logo.png" alt="Laxman Mobile Shop Logo" class="logo-img" />
            </div>

            <!-- NAV -->
            <nav class="nav-links">
                <a href="#"><b>CATEGORY</b></a>
                <a href="#"><b>MORE</b></a>
                <a href="#"><b>OFFERS</b></a>
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

        </div>
    </header>

    <!-- --------------- MOBILE HEADER --------------- -->
    <div class="mobile-wrapper">

        <div class="mobile-top-row">

            <!-- MENU BUTTON -->
            <button class="mobile-menu-toggle" @click="isMobileMenu = !isMobileMenu">

                ☰
            </button>

            <!-- SEARCH ICON - when search closed -->
            <button v-if="!isSearchOpen" class="mobile-search-icon" @click="isSearchOpen = true">
                <i class="bi bi-search"></i>
            </button>

            <!-- LOGO - hide during search -->
            <div v-if="!isSearchOpen" class="mobile-logo">
                <img src="@/assets/image/laxman-logo.png" />
            </div>

            <!-- CART - hide during search -->
            <RouterLink v-if="!isSearchOpen" to="/cart" class="mobile-cart-inline">
                <i class="bi bi-bag-fill"></i>
            </RouterLink>

            <!-- ===== EXPANDED SEARCH BAR ===== -->
            <div v-if="isSearchOpen" class="mobile-search-expanded">
                <input type="text" placeholder="Search..." autofocus />

                <button @click="isSearchOpen = false">
                    ✕
                </button>
            </div>

        </div>

        <!-- DARK OVERLAY -->
        <transition name="fade">
            <div 
            v-if="isMobileMenu" class="mobile-overlay" @click="isMobileMenu = false">
            </div>
        </transition>

        <!-- SLIDE MENU -->
        <transition name="slide">
            <div class="mobile-slide-menu" v-if="isMobileMenu">

                <button class="profile-btn">
                    <i class="bi bi-person-circle" style="font-size: 42px;"></i>
                </button>

                <hr />

                <a href="#">Mobile Cover</a>
                <a href="#">More</a>
                <a href="#">Offer</a>

            </div>
        </transition>

    </div>

</div>
</template>

<style>
@import "@/assets/styles/Header.css";
</style>
